#!/bin/sh

Major=8
Minor=171
Build=12

Jdk=jdk-${Major}.${Minor}
Jre=jre-${Major}.${Minor}

function doTheWork {
     wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/e758a0de34e24606bca991d704f6dcbf/jdk-${Major}u${Minor}-linux-$1.tar.gz \
          --header "Cookie: oraclelicense=accept-securebackup-cookie" \
          --no-check-certificate \
          -O ${Jdk}-$1.tar.gz

     curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Jdk}-$1.tar.gz -v -# \
          -uaibar:${BintrayKey} \
          -T ${Jdk}-$1.tar.gz

     wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/e758a0de34e24606bca991d704f6dcbf/jre-${Major}u${Minor}-linux-$1.tar.gz \
          --header "Cookie: oraclelicense=accept-securebackup-cookie" \
          --no-check-certificate \
          -O ${Jre}-$1.tar.gz

     curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Jre}-$1.tar.gz -v -# \
          -uaibar:${BintrayKey} \
          -T ${Jre}-$1.tar.gz
}