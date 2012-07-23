# Copyright 2007-2011 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)\
	src/com/bamf/ics/torch/utils/ITorchToggleService.aidl


LOCAL_PACKAGE_NAME := BAMFTorch
LOCAL_CERTIFICATE := platform

# Builds against the public SDK
#LOCAL_SDK_VERSION := current
LOCAL_PROGUARD_ENABLED := full
LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

# This finds and builds the test apk as well, so a single make does both.
include $(call all-makefiles-under,$(LOCAL_PATH))