# luajit-slua-protoc
luajit-slua-protoc make to android and ios

本项目是基于mac平台做的，win下和linux下只能编译android的so文件。而且win下需要重新写批处理程序，因为win下运行不了shell。

更改配置：编译安卓so文件需要用到ndk，所以你需要在批处理文件中修改你的ndk路径，编译ios也一样，需要将你的xcode路径替换掉。

脚本 make_android_armeabi_v7a.sh 用ndk编译android v7a平台

脚本 make_android_x86.sh 用ndk编译android x86平台

脚本 make_ios.sh 用xcode编译ios arm64平台

编译后的动态库文件会放在/build/下的android_armeabi , android_armeabi_v7a , android_x86 , ios 下
