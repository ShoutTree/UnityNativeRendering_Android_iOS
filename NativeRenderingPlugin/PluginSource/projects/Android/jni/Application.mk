MY_PROEJECT_PATH = ..
MY_INCLUDES :=  -I$(MY_PROEJECT_PATH) \
				-I$(MY_PROEJECT_PATH)/arworks 

#APP_OPTIM := debug
APP_OPTIM := release

APP_CFLAGS += $(MY_INCLUDES)
APP_CFLAGS += -fexceptions -frtti

# armeabi-v7a
APP_ABI := armeabi-v7a
#APP_ABI := arm64-v8a
#APP_CFLAGS += -mfpu=neon

#arm64-v8a
#APP_ABI := arm64-v8a

APP_PLATFORM := android-27
APP_STL := gnustl_static

NDK_TOOLCHAIN_VERSION := 4.9

#NDK_TOOLCHAIN_VERSION := clang

# APP_STL := stlport_static
