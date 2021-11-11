# Release name
PRODUCT_RELEASE_NAME := Wasp

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := nokia
PRODUCT_DEVICE := Wasp
PRODUCT_MANUFACTURER := nokia
PRODUCT_MODEL := Wasp
PRODUCT_NAME := omni_Wasp

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0

#Below Tagged Because GitHub WorkFlows Failed Because Of The Values

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT := Nokia/Wasp_00WW/WSP_sprout:9/PPR1.180610.011/00WW_1_630:user/release-keys \
#    PRIVATE_BUILD_DESC="full_wasp-user 9 PPR1.180610.011 4210 release-keys"
