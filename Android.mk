LOCAL_PATH := $(my-dir)

ifeq ($(TARGET_DEVICE),pico)
    subdir_makefiles := \
#disable audio for now(compile errors)	 $(LOCAL_PATH)/libaudio/Android.mk \
#	 $(LOCAL_PATH)/libacoustic/Android.mk \
#	 $(LOCAL_PATH)/libcamera/Android.mk \
     include $(subdir_makefiles)
endif
