#
# Copyright (C) 2017-2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from liber device
$(call inherit-product, device/motorola/liber/device.mk)

# Inherit some common tequilaOS stuff.
$(call inherit-product, vendor/tequila/config/common_full_phone.mk)

# tequilaOS
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := tequila_liber
PRODUCT_DEVICE := liber
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one fusion+
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Build info
BUILD_FINGERPRINT := "motorola/liber_retail/liber:11/RPIS31.Q2-42-25-1/19a8e:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=liber_retail \
    PRIVATE_BUILD_DESC="liber_retail-user 11 RPIS31.Q2-42-25-1 19a8e release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
