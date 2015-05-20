LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := portableproplib

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := \
	$(wildcard $(LOCAL_PATH)/src/*.c)

LOCAL_CFLAGS += -Wall -Wextra
LOCAL_LDLIBS := 

# Static library 

LOCAL_MODULE := portableproplib_static

LOCAL_MODULE_FILENAME := libportableproplib

LOCAL_LDLIBS := 
LOCAL_EXPORT_LDLIBS := 

include $(BUILD_STATIC_LIBRARY)
