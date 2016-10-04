#!/bin/bash

Major=8
Minor=102
Build=14

Jdk=jdk-${Major}.${Minor}.tar.gz
Jre=jre-${Major}.${Minor}.tar.gz

if [ ! -f ${Jdk} ]
then
    wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/jdk-${Major}u${Minor}-linux-x64.tar.gz \
         --header "Cookie: oraclelicense=accept-securebackup-cookie" \
         --no-check-certificate \
         -O ${Jdk}
fi

curl https://api.bintray.com/content/aibar/generic/oraclejdk-mirror/${Major}.${Minor}/${Jdk} -v -# \
     -uaibar:${BintrayKey} \
     -T ${Jdk}

if [ ! -f ${Jre} ]
then
    wget http://download.oracle.com/otn-pub/java/jdk/${Major}u${Minor}-b${Build}/jre-${Major}u${Minor}-linux-x64.tar.gz \
         --header "Cookie: oraclelicense=accept-securebackup-cookie" \
         --no-check-certificate \
         -O ${Jre}
fi

curl https://api.bintray.com/content/aibar/generic/oraclejdk-mirror/${Major}.${Minor}/${Jre} -v -# \
     -uaibar:${BintrayKey} \
     -T ${Jre}
