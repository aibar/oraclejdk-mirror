#!/bin/sh

Major=8
Minor=151
Build=12

Jdk=jdk-${Major}.${Minor}.tar.gz
Jre=jre-${Major}.${Minor}.tar.gz

wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/e758a0de34e24606bca991d704f6dcbf/jdk-${Major}u${Minor}-linux-x64.tar.gz \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     --no-check-certificate \
     -O ${Jdk}

curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Jdk} -v -# \
     -uaibar:${BintrayKey} \
     -T ${Jdk}

wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/e758a0de34e24606bca991d704f6dcbf/jre-${Major}u${Minor}-linux-x64.tar.gz \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     --no-check-certificate \
     -O ${Jre}

curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Jre} -v -# \
     -uaibar:${BintrayKey} \
     -T ${Jre}