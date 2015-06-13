export NDK=/Users/luzexi/Desktop/work/_Environment/android-ndk-r9
export NDKABI=14
export NDKVER=$NDK/toolchains/x86-4.6
export NDKP=$NDKVER/prebuilt/darwin-x86_64/bin/i686-linux-android-
export NDKF="--sysroot $NDK/platforms/android-$NDKABI/arch-x86"
#export NDKARCH="-march=armv7-a -mfloat-abi=softfp -Wl,--fix-cortex-a8"
#export NDK_MAKE=$NDK/prebuilt/darwin-x86_64/bin/make.exe

make clean
#./configure --with-luajit-xcflags='-std=gnu99'
make HOST_CC="gcc -m32" CROSS=$NDKP TARGET_FLAGS="$NDKF" TARGET_SYS="Linux" clean default

cp src/libluajit.so build/android_x86/
