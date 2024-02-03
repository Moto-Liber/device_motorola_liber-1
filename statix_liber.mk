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

# Inherit some common StatiXOS stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# StatiX Flags
ENABLE_GAMETOOLS := true
INCLUDE_PIXEL_LAUNCHER := true
TARGET_USES_BLUR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := statix_liber
PRODUCT_DEVICE := liber
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one fusion+
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_GMS_CLIENTID_BASE := android-motorola
