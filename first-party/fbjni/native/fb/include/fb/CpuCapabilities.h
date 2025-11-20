/*
 * Copyright (c) 2015-present, Facebook.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#pragma once

namespace facebook {
namespace jni {

/**
 * Registers the native CpuCapabilities methods. This is invoked from JNI_OnLoad.
 */
void initialize_cpucapabilities();

} // namespace jni
} // namespace facebook



