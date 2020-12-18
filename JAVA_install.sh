#!/bin/bash
#jdk1.8解除限制
#@clear

#install java
cd /usr/local/
wget https://outerchain.s3.cn-northwest-1.amazonaws.com.cn/jdk-8u261-linux-x64.tar.gz
tar -zxvf jdk-8u261-linux-x64.tar.gz
rm -rf /usr/local/jdk-8u261-linux-x64.tar.gz
echo 'export JAVA_HOME=/usr/local/jdk1.8.0_261'>>/etc/profile
echo 'export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH'>>/etc/profile
echo 'export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH'>>/etc/profile
source /etc/profile

echo $JAVA_HOME

exit
