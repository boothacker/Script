#!/bin/sh
export USE_CCACHE=1
export CCACHE_DIR=/home/ninad/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 100G
. build/envsetup.sh
lunch romname_Z010D-userdebug
#lunch romname_aio_otfp-userdebug
export KBUILD_BUILD_USER=Ninad
export KBUILD_BUILD_HOST=REIGNZ
mka bacon -j32
