#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LIPO="xcrun -sdk iphoneos lipo"
STRIP="xcrun -sdk iphoneos strip"

IXCODE=`xcode-select -print-path`
ISDK=$IXCODE/Platforms/iPhoneOS.platform/Developer
ISDKVER=iPhoneOS8.3.sdk
ISDKP=$IXCODE/usr/bin/

if [ ! -e $ISDKP/ar ]; then 
	sudo cp $ISDK/usr/bin/ar $ISDKP
fi

if [ ! -e $ISDKP/ranlib ]; then
	sudo cp $ISDK/usr/bin/ranlib $ISDKP
fi

if [ ! -e $ISDKP/strip ]; then
	sudo cp $ISDK/usr/bin/strip $ISDKP
fi

make clean
ISDKF="-arch arm64 -isysroot $ISDK/SDKs/$ISDKVER"
make HOST_CC="gcc " CROSS="$ISDKP" TARGET_FLAGS="$ISDKF" TARGET=arm64 TARGET_SYS=iOS

cp src/libluajit.a build/ios/
