#!/bin/sh

Major=8
Minor=211
Build=12

Version=${Major}.${Minor}

wget https://download.oracle.com/otn/java/jdk/${Major}u${Minor}-b${Build}/478a62b7d4e34b78b671c754eaaf38ab/${Type}-${Major}u${Minor}-linux-${Arc}.tar.gz?AuthParam=1558340737_d1c88ca920cad1adcebd61f94b80ce68 \
     --header "Cookie: oraclelicense=accept-securebackup-cookie" \
     --no-check-certificate \
     --no-cookies \
      -O ${Type}-${Version}-${Arc}.tar.gz

curl https://api.bintray.com/content/walkingdevs/mirrors/oraclejdk/${Major}.${Minor}/${Type}-${Version}-${Arc}.tar.gz -v -# \
     -uaibar:${BintrayKey} \
     -T ${Type}-${Version}-${Arc}.tar.gz