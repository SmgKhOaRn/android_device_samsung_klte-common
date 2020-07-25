#!/bin/bash
#
<<<<<<< HEAD
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
=======
# Copyright (C) 2017-2018 The LineageOS Project
>>>>>>> msm8974-common/lineage-17.1
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

set -e

<<<<<<< HEAD
export INITIAL_COPYRIGHT_YEAR=2014
=======
>>>>>>> msm8974-common/lineage-17.1

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

<<<<<<< HEAD
CM_ROOT="$MY_DIR"/../../..
=======
# Override anything that may come from the calling environment
CM_ROOT="$MY_DIR"/../../..
BOARD=msm8974
DEVICE_COMMON=${BOARD}-common
INITIAL_COPYRIGHT_YEAR=2017
VENDOR=samsung
>>>>>>> msm8974-common/lineage-17.1

HELPER="$CM_ROOT"/vendor/lineage/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Initialize the helper for common device
setup_vendor "$DEVICE_COMMON" "$VENDOR" "$CM_ROOT" true

<<<<<<< HEAD
# Copyright headers and common guards
write_headers "klte klteactivexx kltechn kltechnduo klteduos kltedv kltekdi kltekor kltespr kltesprsports klteusc kltevzw"
=======
# Copyright headers
write_headers $BOARD TARGET_BOARD_PLATFORM
>>>>>>> msm8974-common/lineage-17.1

write_makefiles "$MY_DIR"/common-proprietary-files.txt

write_footers
<<<<<<< HEAD

if [ ! -z $VARIANT_COPYRIGHT_YEAR ]; then
    export INITIAL_COPYRIGHT_YEAR=$VARIANT_COPYRIGHT_YEAR
fi

# Reinitialize the helper for device
setup_vendor "$DEVICE" "$VENDOR" "$CM_ROOT"

# Copyright headers and guards
write_headers

for BLOB_LIST in "$MY_DIR"/../$DEVICE/device-proprietary-files*.txt; do
    write_makefiles $BLOB_LIST
done

write_footers

./../msm8974-common/setup-makefiles.sh $@
=======
>>>>>>> msm8974-common/lineage-17.1
