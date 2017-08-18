$(info --TCL INFO:TARGET_PRODUCT is $(TARGET_PRODUCT), will integration the app by the Android.mk--)
####################################
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

XIRI_APP_NAME := Xiri_tcl

$(shell mkdir -p $(TARGET_OUT_APPS_PRIVILEGED)/$(XIRI_APP_NAME)/lib/arm)
$(shell mkdir -p $(TARGET_OUT)/lib)


$(shell rm -rf $(TARGET_OUT)/lib/libvitvbasicphrasegrm.so; \
cp $(LOCAL_PATH)/libvitvbasicphrasegrm.so $(TARGET_OUT)/lib/libvitvbasicphrasegrm.so)

$(shell rm -rf $(TARGET_OUT)/lib/libvitvlsopencfg.so; \
cp $(LOCAL_PATH)/libvitvlsopencfg.so $(TARGET_OUT)/lib/libvitvlsopencfg.so)

$(shell rm -rf $(TARGET_OUT)/lib/libvitvmaindict.so; \
cp $(LOCAL_PATH)/libvitvmaindict.so $(TARGET_OUT)/lib/libvitvmaindict.so)

$(shell rm -rf $(TARGET_OUT)/lib/libvitvmspkcfg.so; \
cp $(LOCAL_PATH)/libvitvmspkcfg.so $(TARGET_OUT)/lib/libvitvmspkcfg.so)

$(shell rm -rf $(TARGET_OUT)/lib/libvitvphonecost.so; \
cp $(LOCAL_PATH)/libvitvphonecost.so $(TARGET_OUT)/lib/libvitvphonecost.so)

$(shell rm -rf $(TARGET_OUT)/lib/libvitvpinyin.so; \
cp $(LOCAL_PATH)/libvitvpinyin.so $(TARGET_OUT)/lib/libvitvpinyin.so)

$(shell rm -rf $(TARGET_OUT)/lib/libvitvsystemcommongrm.so; \
cp $(LOCAL_PATH)/libvitvsystemcommongrm.so $(TARGET_OUT)/lib/libvitvsystemcommongrm.so)

$(shell rm -rf $(TARGET_OUT)/lib/libxdriver_xiri_d.so; \
cp $(LOCAL_PATH)/libxdriver_xiri_d.so $(TARGET_OUT)/lib/libxdriver_xiri_d.so)

$(shell rm -rf $(TARGET_OUT)/lib/libiflyblesvc_xiri_d.so; \
cp $(LOCAL_PATH)/libiflyblesvc_xiri_d.so $(TARGET_OUT)/lib/libiflyblesvc_xiri_d.so)

$(shell rm -rf $(TARGET_OUT)/lib/libOpenVoiceReader.so; \
cp $(LOCAL_PATH)/libOpenVoiceReader.so $(TARGET_OUT)/lib/libOpenVoiceReader.so)


include $(CLEAR_VARS)
LOCAL_MODULE := libEmpty
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	

include $(CLEAR_VARS)
LOCAL_MODULE := libem_aisound5
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	


###############讯飞Xiri中包含的so文件##########################
include $(CLEAR_VARS)
LOCAL_MODULE := libAshmemWriter
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	

include $(CLEAR_VARS)
LOCAL_MODULE := libicocodec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	

include $(CLEAR_VARS)
LOCAL_MODULE := libsiren7codec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	

include $(CLEAR_VARS)
LOCAL_MODULE := libvitvlsopen
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	

include $(CLEAR_VARS)
LOCAL_MODULE := libvitvmsc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	

include $(CLEAR_VARS)
LOCAL_MODULE := libvitvmspk
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	

include $(CLEAR_VARS)
LOCAL_MODULE := libvitvvad
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_SRC_FILES:= $(LOCAL_MODULE)$(TARGET_SHLIB_SUFFIX)
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)	


include $(CLEAR_VARS)
LOCAL_MODULE := $(XIRI_APP_NAME)
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE :=true
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_JNI_SHARED_LIBRARIES := libc
LOCAL_MULTILIB :=32

ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT) 


include $(CLEAR_VARS)
LOCAL_MODULE := XiriHAL
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_JNI_SHARED_LIBRARIES := libc
LOCAL_PRIVILEGED_MODULE :=true
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT) 

# 主要作用是从系统的audiorecorder读取遥控器发送过来的录音数据并发送给讯飞语点处理的。
#对多屏互动发送的相关语音数据的处理也在这个应用中。 录音完后，和多屏互动发送过来的存储地址，以地址方式发送给讯飞
include $(CLEAR_VARS)
LOCAL_MODULE := XiriRecorder
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_JNI_SHARED_LIBRARIES := libc
LOCAL_PRIVILEGED_MODULE :=true
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT) 

include $(CLEAR_VARS)
LOCAL_MODULE := SystemXiri
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE :=true
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_JNI_SHARED_LIBRARIES := libEmpty
LOCAL_MULTILIB :=32

ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := xiriservice_tcl
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MULTILIB :=32
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := addtails.pcm
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
include $(BUILD_PREBUILT)

# ==============================================================================

