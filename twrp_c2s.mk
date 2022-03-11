# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/c2s/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/c2s/recovery/root,recovery/root)

# Device identifier
PRODUCT_RELEASE_NAME := c2s
PRODUCT_DEVICE := c2s
PRODUCT_NAME := twrp_c2s
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy Note 20 Ultra
PRODUCT_MANUFACTURER := samsung

