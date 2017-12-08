#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Common proprietary binaries
$(call inherit-product, vendor/xiaomi/msm8992-common/msm8992-common-vendor.mk)

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# Common properties
TARGET_SYSTEM_PROP += device/xiaomi/msm8992-common/system.prop

# Common headers
TARGET_SPECIFIC_HEADER_PATH += device/xiaomi/msm8992-common/include

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-uart"

# QCOM sepolicy
include device/qcom/sepolicy/sepolicy.mk

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8992 \
    audio_policy.msm8992 \
    audio.r_submix.default \
    audio.usb.default

# some extra tools
PRODUCT_PACKAGES += \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay

# routes, paths, effects, policy
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    device/xiaomi/msm8992-common/audio/audio_effects.conf:system/etc/audio_effects.conf \
    device/xiaomi/msm8992-common/audio/audio_output_policy.conf:system/etc/audio_output_policy.conf \
    device/xiaomi/msm8992-common/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/xiaomi/msm8992-common/audio/audio_platform_info_i2s.xml:system/etc/audio_platform_info_i2s.xml \
    device/xiaomi/msm8992-common/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/xiaomi/msm8992-common/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    device/xiaomi/msm8992-common/audio/audio_policy_volumes.xml:system/etc/audio_policy_volumes.xml \
    device/xiaomi/msm8992-common/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/xiaomi/msm8992-common/audio/mixer_paths_i2s.xml:system/etc/mixer_paths_i2s.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    Snap

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml

# LAN
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# Lights
PRODUCT_PACKAGES += \
    lights.msm8992

# IR
PRODUCT_PACKAGES += \
    consumerir.msm8992

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.recovery.qcom.rc \
    init.target.rc \
    init.qcom.post_boot.sh \
    fstab.qcom \
    ueventd.qcom.rc

# Keylayout
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/configs/atmel-maxtouch.kl:system/usr/keylayout/atmel-maxtouch.kl \
    device/xiaomi/msm8992-common/configs/ft5x46.kl:system/usr/keylayout/ft5x46.kl \
    device/xiaomi/msm8992-common/configs/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/xiaomi/msm8992-common/configs/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Media common
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/xiaomi/msm8992-common/configs/media_codecs.xml:system/etc/media_codecs.xml \

# Overlay common
DEVICE_PACKAGE_OVERLAYS := \
    device/xiaomi/msm8992-common/overlay

# Hardware feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Power
PRODUCT_PACKAGES += \
    power.msm8992

# ACDB common
ACDB_TARGET ?= Forte

PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/audio/acdbdata/$(ACDB_TARGET)_Bluetooth_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Bluetooth_cal.acdb \
    device/xiaomi/msm8992-common/audio/acdbdata/$(ACDB_TARGET)_General_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_General_cal.acdb \
    device/xiaomi/msm8992-common/audio/acdbdata/$(ACDB_TARGET)_Global_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Global_cal.acdb \
    device/xiaomi/msm8992-common/audio/acdbdata/$(ACDB_TARGET)_Handset_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Handset_cal.acdb \
    device/xiaomi/msm8992-common/audio/acdbdata/$(ACDB_TARGET)_Hdmi_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Hdmi_cal.acdb \
    device/xiaomi/msm8992-common/audio/acdbdata/$(ACDB_TARGET)_Headset_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Headset_cal.acdb \
    device/xiaomi/msm8992-common/audio/acdbdata/$(ACDB_TARGET)_Speaker_cal.acdb:system/etc/acdbdata/$(ACDB_TARGET)/$(ACDB_TARGET)_Speaker_cal.acdb

PRODUCT_PACKAGES += \
    audiod \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessingdescriptors \
    libqcomvoiceprocessing

PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    device/xiaomi/msm8992-common/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/xiaomi/msm8992-common/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# Bluetooth common
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# Display HAL
PRODUCT_PACKAGES += \
    copybit.msm8992 \
    gralloc.msm8992 \
    hwcomposer.msm8992 \
    liboverlay \
    libqdutils \
    libqdMetaData \
    memtrack.msm8992

# OpenGLES Android Extension
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml

# GPS common
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/configs/gps/flp.conf:system/etc/flp.conf \
    device/xiaomi/msm8992-common/configs/gps/gps.conf:system/etc/gps.conf \
    device/xiaomi/msm8992-common/configs/gps/izat.conf:system/etc/izat.conf \
    device/xiaomi/msm8992-common/configs/gps/sap.conf:system/etc/sap.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# IPA common
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Misc common
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/configs/sec_config:system/etc/sec_config \
    device/xiaomi/msm8992-common/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

PRODUCT_PACKAGES += \
    libtinyxml

# try not to use big cores during dexopt
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=4

# Network common
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libbson \
    libcnefeatureconfig \
    libqsap_sdk \
    librmnetctl \
    libxml2

# FM
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Sensor
PRODUCT_PACKAGES += \
    sensors.msm8992

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml

# Thermal engine
PRODUCT_PACKAGES += \
    libshim_thermalengine

# USB
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# WLAN
PRODUCT_PACKAGES += \
    readmac \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/xiaomi/msm8992-common/wifi/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    device/xiaomi/msm8992-common/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/xiaomi/msm8992-common/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/xiaomi/msm8992-common/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    device/xiaomi/msm8992-common/wifi/WCNSS_cfg.dat:system/etc/wifi/WCNSS_cfg.dat \
    device/xiaomi/msm8992-common/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml


