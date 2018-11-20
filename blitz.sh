#!/bin/sh
export USE_CCACHE=1
export CCACHE_DIR=/home/ninad/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 100G
. build/envsetup.sh
lunch bootleg_Z010D-userdebug
export KBUILD_BUILD_USER=Ninad
export KBUILD_BUILD_HOST=REIGNZ
export ALLOW_MISSING_DEPENDENCIES=true
make bacon -j$(nproc --all) | tee log.txt
