# Audio calibration database
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
