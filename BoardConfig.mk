#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from msm8998-common
include device/xiaomi/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/sagit

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := sagit_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := sagit

# LCD Density
PRODUCT_GENERIC_PROPERTIES += \
    ro.sf.lcd_density=428

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_sagit
TARGET_RECOVERY_DEVICE_MODULES := libinit_sagit

# Inherit from proprietary files
include vendor/xiaomi/sagit/BoardConfigVendor.mk
