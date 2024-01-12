#!/bin/bash

export ARCH=arm64
export ANDROID_MAJOR_VERSION=q
export CROSS_COMPILE=./toolchain/bin/aarch64-linux-gnu-

make exynos7885-a7y18lte_defconfig
make -j$(nproc --all)
