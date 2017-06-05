#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk) # Called in device/rockchip/common/device.mk
include device/rockchip/rk312x/BoardConfig.mk
$(call inherit-product, device/rockchip/common/device.mk)
PRODUCT_BRAND := Proscan
PRODUCT_DEVICE := rk312x
PRODUCT_NAME := rk312x
PRODUCT_MANUFACTURER := Proscan
PRODUCT_MODEL := PLT9650G
#PRODUCT_MODEL := PLT1065G

# Override appt config
PRODUCT_AAPT_CONFIG := normal large xlarge mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_PACKAGES += \
    Launcher3 \
    Amazon_App \
    AppOps

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rk.hdmi_enable = false \
    ro.product.version = 1.0.0 \
    ro.product.ota.host = 127.0.0.1:2300 \
    ro.target.product = tablet

