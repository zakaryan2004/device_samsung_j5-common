#!/sbin/sh
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

# Detect variant and copy its specific-blobs
VARIANT=$(/tmp/install/bin/get_variant.sh)

if [ $VARIANT == "nltexx" ]; then
	rm /system/lib/hw/nfc_nci.msm8916.so
	rm /system/etc/libnfc-sec.conf
	rm /system/etc/libnfc-sec-hal.conf
else
	rm /system/etc/libnfc*.conf
	rm -rf /system/priv-app/*Nfc*
	rm -rf /system/app/*Nfc*
fi

exit 0
