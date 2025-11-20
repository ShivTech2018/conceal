LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := concealjni
LOCAL_CFLAGS    := -fvisibility=hidden -Os -fdata-sections -ffunction-sections -fexceptions -std=gnu++1y

# Add ALL necessary include paths
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../first-party/fbjni/native/fb/include
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../native/cpp/include
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../first-party/include
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../third-party/openssl/include

LOCAL_SRC_FILES := CipherHybrid.cpp DecryptHybrid.cpp EncryptHybrid.cpp JavaArrays.cpp JKeyChain.cpp KeyChainFromJava.cpp MacDecoderHybrid.cpp MacEncoderHybrid.cpp OnLoad.cpp PBKDF2Hybrid.cpp
LOCAL_LDLIBS    := -llog
LOCAL_LDFLAGS   += -Wl,--gc-sections -Wl,--exclude-libs,ALL

# Link against the libfb shared library
LOCAL_SHARED_LIBRARIES := fb

include $(BUILD_SHARED_LIBRARY)

# Import the libfb module
$(call import-add-path,$(LOCAL_PATH)/../../first-party/fbjni/native)
$(call import-module,fb)