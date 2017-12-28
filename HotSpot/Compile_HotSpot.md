# 编译HotSpot7

操作系统：ubuntu 14.04

Oracle JDK：jdk1.6.0_45

HotSpot源码：hotsopt7u60

Ant：apache-ant-1.7.1

GCC：gcc-4.8.4

GDB：gdb-7.7.1

1. 从[http://hg.openjdk.java.net/](http://hg.openjdk.java.net/)下载源代码
2. 编写编译脚本[compile_hotspotu60.sh](https://github.com/lanhuidong/conf/blob/master/HotSpot/compile_hotspot7u60.sh)
3. 使用GDB在刚编译的HotSpot中调试Hello.class，进入build/hotspot_debug/linux_amd64_compiler2/jvmg目录，执行`sh hotspot -gdb Hello`

常见的问题：

1. 操作系统，JDK以及GCC等工具的版本如果和上面列出的不一致，可能导致编译失败

