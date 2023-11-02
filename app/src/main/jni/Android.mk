
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Here is the name of your lib.
# When you change the lib name, change also on System.loadLibrary("") under OnCreate method on StaticActivity.java
# Both must have same name

# LOCAL_MODULE := libstdc++
# LOCAL_EXPORT_LDLIBS := $(LOCAL_PATH)/libs/(TARGET_ARCH_ABI)/

LOCAL_MODULE := Nikto

LOCAL_CFLAGS += -Wno-error=format-security -fvisibility=hidden -ffunction-sections -fdata-sections -w
LOCAL_CPPFLAGS += -Wno-error=format-security -fvisibility=hidden -ffunction-sections -fdata-sections -w -Werror -s -fms-extensions
LOCAL_LDFLAGS += -Wl --gc-sections --strip-all

# LOCAL_ARM_MODE := armeabi-v7a
LOCAL_ARM_MODE := arm

# LOCAL_SRC_FILES := $(LOCAL_PATH)/libs/$(TARGET_ARCH_ABI)/libButterMenu$(TARGET_LIB_EXTENSION)
# LOCAL_EXPORT_LDLIBS := -llog -landroid -lz -libButterMenu$(TARGET_LIB_EXTENSION)
# include $(BUILD_SHARED_LIBRARY)
# include $(BUILD_STATIC_LIBRARY)

LOCAL_CPP_FEATURES := exceptions
LOCAL_SRC_FILES := Main.cpp \
                        Tools.cpp \
                        fake_dlfcn.cpp \
                        Il2Cpp.cpp \
                        Engine/Paint.cpp \
                        Engine/Canvas.cpp \
                        Engine/Rect.cpp \
                        Engine/Typeface.cpp \
                        Engine/Path.cpp \
                        Substrate/hde64.c \
                        Substrate/SubstrateDebug.cpp \
                        Substrate/SubstrateHook.cpp \
                        Substrate/SubstratePosixMemory.cpp \
                        Substrate/And64InlineHook.cpp
	
LOCAL_LDLIBS := -llog -landroid -lz

# include $(PERBUILT_SHARED_LIBRARY)
include $(BUILD_SHARED_LIBRARY)










