# 编译调试OpenJDK

## 下载OpenJDK源码包

环境：MacOS Mojave 10.14.5

版本：OpenJDK9

[OpenJDK下载地址](http://hg.openjdk.java.net/)

> 注：无法直接下载地址中的源码，迅雷每次下载1.5M就自己断了。

hg仓库下载命令
```shell
hg clone http://hg.openjdk.java.net/jdk9/jdk9 openjdk9
```

然鹅，一直失败！！！

写个脚本
```shell
hg clone http://hg.openjdk.java.net/jdk9/jdk9 openjdk9

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9 openjdk9
done
```
这样就能不断自动重试。Done。

下载相关源码包。
```shell
cd openjdk9
bash ./get_source.sh
```

又是一直失败！！！

再写一个脚本～ 暴力下载每个源码包。

**建议分别下载**。除了jdk和hotspot两个包比较大，其他包可以单独执行下载。然后用脚本不断重试下载jdk和hotspot，然后去睡个觉吧。

```
hg clone http://hg.openjdk.java.net/jdk9/jdk9/corba corba

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9/corba corba
done

hg clone http://hg.openjdk.java.net/jdk9/jdk9/jaxp jaxp

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9/jaxp jaxp
done

hg clone http://hg.openjdk.java.net/jdk9/jdk9/jaxws jaxws

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9/jaxws jaxws
done

hg clone http://hg.openjdk.java.net/jdk9/jdk9/langtools langtools

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9/langtools langtools
done

hg clone http://hg.openjdk.java.net/jdk9/jdk9/nashorn nashorn

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9/nashorn nashorn
done

hg clone http://hg.openjdk.java.net/jdk9/jdk9/jdk jdk

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9/jdk jdk
done

hg clone http://hg.openjdk.java.net/jdk9/jdk9/hotspot hotspot

while [ $? -ne 0 ]
do
    hg clone http://hg.openjdk.java.net/jdk9/jdk9/hotspot hotspot
done
```
![abort](/images/abort.png)

无数次失败重试后下载完成！


