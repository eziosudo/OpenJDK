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
