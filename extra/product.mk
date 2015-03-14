#################################
## cmRemiX Required Packages Apps
PRODUCT_PACKAGES += \
    OmniSwitch \
    PerformanceControl \
    ScreenRecorder \
    libscreenrecorder

# cmRemiX OTA
PRODUCT_PACKAGES += \
    cmRemiXUpdater \
    SlimCenter

# Viper4Android
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/etc/viper/ViPER4Android.apk:system/app/ViPER4Android.apk

# KCAL - Advanced color control for Qualcomm MDSS 8x26/8974/8084
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/re.codefi.savoca.kcal.apk:system/app/re.codefi.savoca.kcal.apk

# OpenCamera
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/OpenCamera.apk:system/app/OpenCamera.apk