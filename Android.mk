
$(info --TCL INFO:TARGET_PRODUCT is $(TARGET_PRODUCT), will integration the app by the Android.mk--)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := VoiceManager
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := platform
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(COMMON_ANDROID_PACKAGE_SUFFIX)

ifneq (,$(filter $(TARGET_PLATFORM),MS938 MS838 MS838C))
LOCAL_MULTILIB :=64
else
LOCAL_MULTILIB :=32
endif
	
include $(BUILD_PREBUILT)


include $(call all-makefiles-under,$(LOCAL_PATH))
# ==============================================================================

