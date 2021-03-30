#!/usr/bin/env sh
set -x
test -z "${JDK_VERSION}" && echo "no JDK to build" && exit 1
case "$( uname -m )" in
    aarch64) arch="aarch64" ;;
    x86_64) arch="x64" ;;
esac
wget -O /tmp/jdk.tgz https://download.bell-sw.com/java/${JDK_VERSION}/bellsoft-jdk${JDK_VERSION}-linux-${arch}-musl.tar.gz
cd /tmp
tar xzf jdk.tgz
rm jdk.tgz
mv /tmp/jdk-* /opt/java
rm -f "${0}"
