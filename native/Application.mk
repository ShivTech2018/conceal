# Copyright 2004-present Facebook. All Rights Reserved.

APP_ABI := arm64-v8a armeabi-v7a x86 x86_64
APP_STL := c++_shared

# Enable c++11 extentions in source code
APP_CPPFLAGS += -std=c++14
