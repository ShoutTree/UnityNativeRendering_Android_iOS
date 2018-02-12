LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := RenderingPlugin

RENDERING_PLUGIN_SRCDIR := ../../../source

SRC_RENDERING_PLUGIN := \
            $(RENDERING_PLUGIN_SRCDIR)/RenderingPlugin.cpp\
            $(RENDERING_PLUGIN_SRCDIR)/RenderAPI.cpp\
            $(RENDERING_PLUGIN_SRCDIR)/RenderAPI_OpenGL2.cpp\
            $(RENDERING_PLUGIN_SRCDIR)/RenderAPI_OpenGLCoreES.cpp\


LOCAL_SRC_FILES += $(SRC_RENDERING_PLUGIN) \

LOCAL_CPPFLAGS += -std=c++11

LOCAL_LDLIBS += \
				-lEGL \
				-lGLESv2 \
				-lz\
                -landroid

LOCAL_LDLIBS += -llog


# LOCAL_LDLIBS := -llog -lGLESv2
# LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -DUNITY_ANDROID

include $(BUILD_SHARED_LIBRARY)
