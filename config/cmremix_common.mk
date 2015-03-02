# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/bin/50-backup-script.sh:system/addon.d/50-backup-script.sh \
    vendor/cmremix/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/cmremix/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/cmremix/prebuilt/common/bin/98-temasek.sh:system/addon.d/98-temasek.sh \
    vendor/cmremix/prebuilt/common/bin/otasigcheck.sh:system/bin/otasigcheck.sh \
    

# LCD density backup
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
vendor/cmremix/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Zion959 Debugs Files
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/etc/00_DEBUG:system/etc/init.d/00_DEBUG

# Prebuilt webview files to fix FCs
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/lib/libwebviewchromium.so:system/lib/libwebviewchromium.so \
    vendor/cmremix/prebuilt/lib/libwebviewchromium_loader.so:system/lib/libwebviewchromium_loader.so \
    vendor/cmremix/prebuilt/lib/libwebviewchromium_plat_support.so:system/lib/libwebviewchromium_plat_support.so

# Viper4Android
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/etc/viper/ViPER4Android.apk:system/app/ViPER4Android.apk

# cmRemiX Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/cmremix/overlay/common

# Bootanimation
PRODUCT_COPY_FILES += vendor/cmremix/prebuilt/common/bootanimation/$(CMREMIX_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip

# Init script file with cmRemiX extras
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/etc/init.local.rc:root/init.cmremix.rc

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/cmremix/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# AdBlocker Files
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/etc/hosts.alt:system/etc/hosts.alt \
    vendor/cmremix/prebuilt/common/etc/hosts.og:system/etc/hosts.og

# Zion959 Kernel Needed Files
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    vendor/cmremix/prebuilt/common/etc/init.kernel.sh:system/etc/init.kernel.sh \
    vendor/cmremix/prebuilt/common/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

# easy way to extend to add more packages
-include vendor/cmremix/extra/product.mk

# Debugs Script
-include vendor/cmremix/products/debug.mk

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

# SELinux
BOARD_SEPOLICY_IGNORE += vendor/cm/sepolicy/file_contexts
BOARD_SEPOLICY_DIRS += vendor/cmremix/sepolicy
BOARD_SEPOLICY_UNION += \
    file_contexts \
    system_app.te \
    system_server.te

# cmRemiX version
CMREMIXVERSION := $(shell echo $(CMREMIX_VERSION) | sed -e 's/^[ \t]*//;s/[ \t]*$$//;s/ /./g')
BOARD := $(subst cmremix_,,$(TARGET_PRODUCT))
CMREMIX_BUILD_VERSION := cmRemiX_$(BOARD)_$(CMREMIXVERSION)_$(shell date +%Y%m%d-%H%M%S)

# Set the board version
CM_BUILD := $(BOARD)

# ROMStats Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cmremixstats.name=cmRemix Rom \
    ro.cmremixstats.version=$(CMREMIXVERSION) \
    ro.cmremixstats.tframe=1

# statistics identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cmremix.version=$(CMREMIXVERSION) \
    ro.modversion=$(CMREMIXVERSION)

# Disable ADB authentication and set root access to Apps and ADB
ifeq ($(DISABLE_ADB_AUTH),true)
    ADDITIONAL_DEFAULT_PROPERTIES += \
        ro.adb.secure=3 \
        persist.sys.root_access=3
endif

EXTENDED_POST_PROCESS_PROPS := vendor/cmremix/tools/cmremix_process_props.py

# Inherit sabermod configs.  Don't include if TARGET_ARCH isn't defined
ifdef TARGET_ARCH
  include vendor/cmremix/config/cmremix_sm.mk
else
    $(warning ********************************************************************************)
    $(warning *  TARGET_ARCH not defined.)
    $(warning *  This needs to be set in device trees before common.mk is called.)
    $(warning *  Define TARGET_ARCH before common.mk is called.)
    $(warning *  skipping sm.mk.)
    $(warning ********************************************************************************)
endif
