集成方式：
1.SystemXiri.apk签平台系统签名放到system app下面
2.把所有APK放到system/app目录下
3.把所有.so文件放到system/lib目录下
4.把xiriservice_tcl放到system/bin目录下，并给予755权限
5.把addtails.pcm放到/system/media目录下，并给予755权限
6.需要把xiriservice_tcl加入到init.rc中，保证其开机在后台运行。
===================================================================

说明：
1.此次对TCL使用的应用都进行了升级。
2.需要将xiriservice_tcl放置到system bin 目录下，
并设置开机自启动；设置方法修改启动脚本，启动脚本一般加在 /init.rc 或者平台特定的 /init.****.rc 文件里,添加         service xiriservice /system/bin/xiriservice_tcl  class main  oneshot
3.需要注意的是libphonecost.so， 这几个so,都不是真正的so文件（如果改成其他名称，会出现找不到的情况），编译时，需要将这几个so文件过滤掉。
                               liblsopencfg.so
                               libpinyin.so
                              libsystemcommongrm.so
                               libbasicphrasegrm.so
                               libmaindict.so
                               libmspkcfg.so
