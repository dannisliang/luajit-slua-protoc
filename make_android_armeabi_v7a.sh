export NDK=/Users/luzexi/Desktop/work/_Environment/android-ndk-r9
export NDKABI=14
export NDKVER=$NDK/toolchains/arm-linux-androideabi-4.6
export NDKP=$NDKVER/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-
export NDKF="--sysroot $NDK/platforms/android-$NDKABI/arch-arm"
export NDKARCH="-march=armv7-a -mfloat-abi=softfp -Wl,--fix-cortex-a8"
export NDK_MAKE=$NDK/prebuilt/darwin-x86_64/bin/make.exe

make clean
make HOST_CC="gcc -m32" CROSS=$NDKP TARGET_FLAGS="$NDKF $NDKARCH" TARGET_SYS="Linux" clean default

cp src/libluajit.so build/android_armeabi_v7a/
