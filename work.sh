#!/bin/sh

Major=8
Minor=191
Build=12

Version=${Major}.${Minor}

wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/2787e4a523244c269598db4e85c51e0c/${Type}-${Major}u${Minor}-linux-${Arc}.tar.gz \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     --no-check-certificate \
     --no-cookies \
      -O ${Type}-${Version}-${Arc}.tar.gz

curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Type}-${Version}-${Arc}.tar.gz -v -# \
     -uaibar:${BintrayKey} \
     -T ${Type}-${Version}-${Arc}.tar.gz