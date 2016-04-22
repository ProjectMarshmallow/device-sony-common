# Copyright (C) 2008 The Android Open Source Project
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

# Denotes if we have to use AOSP or STOCK paths 
LIB_VER_STOCK := true

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
ifeq ($(LIB_VER_STOCK), true)
LOCAL_SRC_FILES := lights.c
else
LOCAL_SRC_FILES := lights_aosp.c
endif
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := lights.$(TARGET_DEVICE)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw
include $(BUILD_SHARED_LIBRARY)
