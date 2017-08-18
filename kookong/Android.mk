$(info --TCL INFO:TARGET_PRODUCT is $(TARGET_PRODUCT), will integration the app by the Android.mk--)
####################################
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

###############SystemXiri需要引用##########################
$(shell rm -rf $(TARGET_OUT)/lib/liblocSDK6a.so; \
cp $(LOCAL_PATH)/liblocSDK6a.so $(TARGET_OUT)/lib/liblocSDK6a.so)

$(shell rm -rf $(TARGET_OUT)/lib/libcodekookong.so; \
cp $(LOCAL_PATH)/libcodekookong.so $(TARGET_OUT)/lib/libcodekookong.so)

$(shell rm -rf $(TARGET_OUT)/lib/libluakookong.so; \
cp $(LOCAL_PATH)/libluakookong.so $(TARGET_OUT)/lib/libluakookong.so)

$(shell rm -rf $(TARGET_OUT)/lib/libtrusskookong.so; \
cp $(LOCAL_PATH)/libtrusskookong.so $(TARGET_OUT)/lib/libtrusskookong.so)



##酷控机顶盒相关应用
include $(CLEAR_VARS)
LOCAL_MODULE := Kookong
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_PRIVILEGED_MODULE :=true
LOCAL_MULTILIB :=32
ifneq ($(PLATFORM_VERSION),4.3)
ifneq ($(PLATFORM_VERSION),4.4.1)
         LOCAL_DEX_PREOPT := false
endif 
endif 
include $(BUILD_PREBUILT) 
# ==============================================================================

