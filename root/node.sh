#!/bin/sh

#set variables
num=$2
myip="192.168.31.$2"
dns="192.168.31.1"
gateway="192.168.31.1"
etcdip1="192.168.31.30"
etcdip2="192.168.31.31"
etcdip3="192.168.31.32"
master="192.168.31.50"

sed -e "s/\${myip}/$myip/" \
    -e "s/\${dns}/$dns/" \
    -e "s/\${num}/$num/" \
    -e "s/\${master}/$master/" \
    -e "s/\${etcdip1}/$etcdip1/" \
    -e "s/\${etcdip2}/$etcdip2/" \
    -e "s/\${etcdip3}/$etcdip3/" \
    -e "s/\${gateway}/$gateway/" \
    $1
