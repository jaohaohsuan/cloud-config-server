#!/bin/sh

#set variables
num=$2
myip=192.168.31.$2
dns=192.168.31.1
gateway=192.168.31.1
etcdip1=192.168.31.20
etcdip2=192.168.31.21
etcdip3=192.168.31.22
master=192.168.31.50

sed -e "s/\${myip}/$myip/g" \
    -e "s/\${dns}/$dns/g" \
    -e "s/\${num}/$num/g" \
    -e "s/\${master}/$master/g" \
    -e "s/\${etcdip1}/$etcdip1/g" \
    -e "s/\${etcdip2}/$etcdip2/g" \
    -e "s/\${etcdip3}/$etcdip3/g" \
    -e "s/\${gateway}/$gateway/g" \
    $1
