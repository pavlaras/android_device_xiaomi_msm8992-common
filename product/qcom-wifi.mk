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
