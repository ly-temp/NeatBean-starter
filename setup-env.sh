#!/bin/bash
apt update &&apt install p7zip-full
mkdir -p /workspace/nb &&cd /workspace/nb
wget -O- https://download.oracle.com/java/20/latest/jdk-20_linux-aarch64_bin.tar.gz |tar x
JAVA_HOME=$(realpath jdk-20.0.2)
wget https://archive.apache.org/dist/netbeans/netbeans/18/netbeans-18-bin.zip
7z x netbeans-18-bin.zip &&rm netbeans-18-bin.zip
./netbeans/bin/netbeans --jdkhome "$JAVA_HOME"
