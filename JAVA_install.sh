#!/bin/bash
#AWS装机

#update
sudo su root
yum update
yum install -y wget
yum install -y ntpdate
yum install -y unzip

#Change time zone
timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp yes
timedatectl set-local-rtc 1
hwclock --systohc

#whale
adduser whale

#install java
cd /usr/local/
wget https://outerchain.s3.cn-northwest-1.amazonaws.com.cn/jdk-8u261-linux-x64.tar.gz
tar -zxvf jdk-8u261-linux-x64.tar.gz
rm -rf /usr/local/jdk-8u261-linux-x64.tar.gz
echo 'export JAVA_HOME=/usr/local/jdk1.8.0_261'>>/etc/profile
echo 'export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH'>>/etc/profile
echo 'export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH'>>/etc/profile
source /etc/profile
exit
