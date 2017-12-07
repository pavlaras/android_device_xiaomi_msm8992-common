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

# features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
