#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from those products. Most specific first.
ifneq ($(FERRARI_32_BIT),true)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
endif
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ferrari device
$(call inherit-product, device/xiaomi/ferrari/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ferrari
PRODUCT_NAME := omni_ferrari
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 4i
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
# Build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
TARGET_DEVICE="ferrari" \
PRODUCT_NAME="ferrari" \
BUILD_FINGERPRINT="Xiaomi/ferrari/ferrari:6.0.1/MMB29M:userdebug/test-keys" \
PRIVATE_BUILD_DESC="ferrari-userdebug 6.0.1 MMB29M test-keys"
