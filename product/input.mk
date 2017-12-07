# Input device files
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/configs/atmel-maxtouch.kl:system/usr/keylayout/atmel-maxtouch.kl \
    device/xiaomi/msm8992-common/configs/ft5x46.kl:system/usr/keylayout/ft5x46.kl \
    device/xiaomi/msm8992-common/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/xiaomi/msm8992-common/configs/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml
