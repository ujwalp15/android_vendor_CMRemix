## CMRemix Roms Required Apps and Configs

PRODUCT_PACKAGES += \
    OmniSwitch \
    Apollo

# CMRemixOTA
PRODUCT_PACKAGES += \
    CMRemixOTA \
    CMRemixUpdater \
    CMRemixSetupWizard

# slim Apps
PRODUCT_PACKAGES += \
    SlimFileManager \
    DashClock \
    SlimLauncher

# Kernel Adiuter
PRODUCT_PACKAGES += \
    KernelAdiutor \
    FloatingActionButton

# Viper4Android
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/ViPER4Android/ViPER4Android_FX_A4.x/ViPER4Android_FX_A4.x.apk:system/app/ViPER4Android/ViPER4Android_FX_A4.x.apk
vendor/cmremix/prebuilt/common/apk/ViPER4Android/addon.d/95-LolliViPER.sh:system/addon.d/95-LolliViPER.sh
vendor/cmremix/prebuilt/common/apk/ViPER4Android/audio_policy.sh:system/audio_policy.sh

# KCAL - Advanced color control for Qualcomm MDSS 8x26/8974/8084
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/Savoca-Kcal/Savoca-Kcal.apk:system/app/Savoca-Kcal/Savoca-Kcal.apk

# MDNIE-tuner
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/MDNIE-tuner/MDNIE-tuner.apk:system/app/MDNIE-tuner/MDNIE-tuner.apk

# OpenCamra
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/OpenCamera/OpenCamera.apk:system/app/OpenCamera/OpenCamera.apk

# Zion959 Debugs Files
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/etc/00_DEBUG:system/etc/init.d/00_DEBUG

# WakeGestures
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/WakeGestures/WakeGestures.apk:system/app/WakeGestures/WakeGestures.apk

# CM-Remix Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/cmremix/overlay/common

# Bootanimation
PRODUCT_COPY_FILES += vendor/cmremix/prebuilt/common/bootanimation/$(CMREMIX_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/cmremix/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# AdAway App
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/AdAway/AdAway.apk:system/priv-app/AdAway/AdAway.apk

# Init script file with CM-Remix extras
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/etc/init.local.rc:root/init.cmremix.rc

# Add ZION959 kernel config file
#PRODUCT_COPY_FILES += \
#    vendor/cmremix/prebuilt/common/etc/init.zion959.kernel.sh:system/etc/init.zion959.kernel.sh

# easy way to extend to add more packages
-include vendor/cmremix/extra/product.mk

# Debugs Script
-include vendor/cmremix/products/debug.mk

# CM-Remix version
CMREMIXVERSION := $(shell echo $(CMREMIX_VERSION) | sed -e 's/^[ \t]*//;s/[ \t]*$$//;s/ /./g')
BOARD := $(subst cmremix_,,$(TARGET_PRODUCT))
CMREMIX_BUILD_VERSION := CMRemix-$(BOARD)-$(CMREMIXVERSION)-$(shell date +%Y%m%d-%H%M%S)

# Set the board version
CM_BUILD := $(BOARD)

# Lower RAM devices
ifeq ($(CMREMIX_LOW_RAM_DEVICE),true)
MALLOC_IMPL := dlmalloc
TARGET_BOOTANIMATION_TEXTURE_CACHE := false

PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true \
    dalvik.vm.jit.codecachesize=0 \
    persist.sys.force_highendgfx=true \
    ro.config.low_ram=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.bg_apps_limit=16
endif

# ROMStats Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cmremixstats.name=cmRemix Rom \
    ro.cmremixstats.version=$(CMREMIXVERSION) \
    ro.cmremixstats.tframe=1

# statistics identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cmremix.version=$(CMREMIXVERSION) \
    ro.modversion=$(CMREMIX_BUILD_VERSION) \
    cmremix.ota.version=$(CMREMIX_BUILD_VERSION)

# Disable ADB authentication and set root access to Apps and ADB
ifeq ($(DISABLE_ADB_AUTH),true)
    ADDITIONAL_DEFAULT_PROPERTIES += \
        ro.adb.secure=3 \
        persist.sys.root_access=3
endif

# CMRemix Tweaks & Optimization
PRODUCT_PROPERTY_OVERRIDES += \
         ro.build.selinux=0

# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# TWRP Recovery
ifeq ($(RECOVERY_VARIANT),twrp)
    ifeq ($(CMREMIX_MAKE),recoveryimage)
        BOARD_SEPOLICY_IGNORE += external/sepolicy/domain.te
        BOARD_SEPOLICY_DIRS += vendor/cmremix/sepolicy/twrp
        BOARD_SEPOLICY_UNION += domain.te init.te recovery.te
    endif
endif

# Synapse UKM
ifeq ($(TARGET_ENABLE_UKM),true)
-include vendor/cmremix/config/common_ukm.mk
endif

EXTENDED_POST_PROCESS_PROPS := vendor/cmremix/tools/cmremix_process_props.py

# Inherite sabermod vendor
SM_VENDOR := vendor/sm
include $(SM_VENDOR)/Main.mk
