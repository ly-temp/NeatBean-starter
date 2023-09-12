#!/bin/bash
apt update &&apt install -y p7zip-full
mkdir -p /workspace/nb &&cd /workspace/nb
wget https://download.oracle.com/java/20/latest/jdk-20_linux-x64_bin.tar.gz
tar xf jdk-20_linux-x64_bin.tar.gz &&rm jdk-20_linux-x64_bin.tar.gz
JAVA_HOME=$(realpath jdk-20.0.2)
wget https://archive.apache.org/dist/netbeans/netbeans/18/netbeans-18-bin.zip
7z x netbeans-18-bin.zip &&rm netbeans-18-bin.zip
chmod +x ./netbeans/bin/netbeans
export DISPLAY=:0.0
./netbeans/bin/netbeans --jdkhome "$JAVA_HOME"
