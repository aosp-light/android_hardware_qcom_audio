LOCAL_PATH:= $(call my-dir)
ifeq ($(strip $(BOARD_AUDIO_VARIANT)),caf)
include $(CLEAR_VARS)
include external/stlport/libstlport.mk

LOCAL_SRC_FILES:= \
	audiod_main.cpp \
	AudioDaemon.cpp \

LOCAL_CFLAGS += -DGL_GLEXT_PROTOTYPES -DEGL_EGLEXT_PROTOTYPES -Wunused-parameter

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	libbinder \
	libmedia \
	libstlport

LOCAL_ADDITIONAL_DEPENDENCIES += device/sony/hikari/kernel-headers

LOCAL_MODULE:= audiod
LOCAL_MODULE_TAGS:= debug

include $(BUILD_EXECUTABLE)
endif
