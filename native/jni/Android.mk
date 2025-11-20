LOCAL_PATH:= $(call my-dir)
MY_LOCAL_PATH := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE    := concealjni
LOCAL_CFLAGS    := -fvisibility=hidden -Os -fdata-sections -ffunction-sections -fexceptions -std=gnu++1y
LOCAL_CPPFLAGS  += -fexceptions -frtti

# Suppress all the warnings from old code
LOCAL_CFLAGS    += -Wno-vla-cxx-extension
LOCAL_CFLAGS    += -Wno-vla-extension
LOCAL_CFLAGS    += -Wno-delete-non-abstract-non-virtual-dtor
LOCAL_CFLAGS    += -Wno-delete-non-virtual-dtor

# All include paths for this project
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../first-party/fbjni/native/fb/include
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../native/cpp/include
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../first-party/include
LOCAL_CFLAGS    += -I$(LOCAL_PATH)/../../third-party/openssl/include

LOCAL_SRC_FILES := CipherHybrid.cpp DecryptHybrid.cpp EncryptHybrid.cpp JavaArrays.cpp JKeyChain.cpp KeyChainFromJava.cpp MacDecoderHybrid.cpp MacEncoderHybrid.cpp OnLoad.cpp PBKDF2Hybrid.cpp
LOCAL_LDLIBS    := -llog -lc++_shared -latomic
LOCAL_LDFLAGS   += -Wl,--gc-sections -Wl,--exclude-libs,ALL

LOCAL_STATIC_LIBRARIES := concealcpp
LOCAL_SHARED_LIBRARIES := fb

include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH := $(MY_LOCAL_PATH)
$(call import-add-path,$(MY_LOCAL_PATH)/../../first-party/fbjni/native)
$(call import-module,fb)
LOCAL_PATH := $(MY_LOCAL_PATH)
$(call import-add-path,$(MY_LOCAL_PATH)/..)
$(call import-add-path,$(MY_LOCAL_PATH)/../../third-party)
$(call import-module,cpp)