#!/bin/sh

Major=8
Minor=171
Build=11

Jdk=jdk-${Major}.${Minor}
Jre=jre-${Major}.${Minor}

function doTheWork {
     wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/512cd62ec5174c3487ac17c61aaa89e8/jdk-${Major}u${Minor}-linux-$1.tar.gz \
          --header "Cookie: oraclelicense=accept-securebackup-cookie" \
          --no-check-certificate \
          --no-cookies \
          -O ${Jdk}-$1.tar.gz

     curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Jdk}-$1.tar.gz -v -# \
          -uaibar:${BintrayKey} \
          -T ${Jdk}-$1.tar.gz

     wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/512cd62ec5174c3487ac17c61aaa89e8/jre-${Major}u${Minor}-linux-$1.tar.gz \
          --header "Cookie: oraclelicense=accept-securebackup-cookie" \
          --no-check-certificate \
          -O ${Jre}-$1.tar.gz

     curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Jre}-$1.tar.gz -v -# \
          -uaibar:${BintrayKey} \
          -T ${Jre}-$1.tar.gz
}

doTheWork 'x64'
doTheWork 'x32'