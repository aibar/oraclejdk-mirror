#!/bin/sh

Major=8
Minor=171
Build=11

Version=${Major}.${Minor}

wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/512cd62ec5174c3487ac17c61aaa89e8/${Type}-${Major}u${Minor}-linux-${Arc}.tar.gz \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     --no-check-certificate \
     --no-cookies \
      -O ${Type}-${Version}-${Arc}.tar.gz

curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Type}-${Version}-${Arc}.tar.gz -v -# \
     -uaibar:${BintrayKey} \
     -T ${Type}-${Version}-${Arc}.tar.gz