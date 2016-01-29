#!/bin/sh

#set variables
myip=$2
num=$3
dns="192.168.31.1"
gateway="192.168.31.1"
etcdip1="192.168.31.30"
etcdip2="192.168.31.31"
etcdip3="192.168.31.32"

sed -e "s/\${myip}/$myip/" \
    -e "s/\${dns}/$dns/" \
    -e "s/\${etcdip1}/$etcdip1/" \
    -e "s/\${etcdip2}/$etcdip2/" \
    -e "s/\${etcdip3}/$etcdip3/" \
    -e "s/\${gateway}/$gateway/" \
    -e "s/\${num}/$num/" \
    $1
