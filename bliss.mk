#
# Copyright 2013 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
# $(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/huawei/angler/aosp_angler.mk)
$(call inherit-product, vendor/huawei/angler/device-vendor.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/bliss/config/common.mk)

PRODUCT_NAME := bliss_angler
PRODUCT_DEVICE := angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Boot animation
 TARGET_SCREEN_HEIGHT := 2560
 TARGET_SCREEN_WIDTH := 1440
 TARGET_BOOTANIMATION_HALF_RES := true

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.0/NRD90U/3155372:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.0 NRD90U 3155372 release-keys"
