#!/bin/bash

ANDROID_PATH=/home/shixq/Android/android-ndk-r18b
PLATFORM_VERSION=21

MAKE_TOOLCHAIN=$ANDROID_PATH/build/tools/make_standalone_toolchain.py
export TOOLCHAIN_PATH=$ANDROID_PATH/android-toolchain-arm64
#$MAKE_TOOLCHAIN --arch=arm64 --api=21 --install-dir=$TOOLCHAIN_PATH

export MACHINE=armv8
export SYSTEM=android64-aarch64
export ARCH=aarch64
export CROSS_SYSROOT=$TOOLCHAIN_PATH/sysroot
export TOOL_BASENAME=$TOOLCHAIN_PATH/bin/aarch64-linux-android
export CC=$TOOL_BASENAME-gcc
export CXX=$TOOL_BASENAME-g++
export LD=$TOOL_BASENAME-ld
export LINK=$CXX
export AR=$TOOL_BASENAME-ar
export RANLIB=$TOOL_BASENAME-ranlib
export STRIP=$TOOL_BASENAME-strip

./config
make clean && make
