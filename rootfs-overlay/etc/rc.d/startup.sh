#!/bin/bash
mount /proc
mount /sys
mount /tmp
mkdir /dev/pts
mount /dev/pts

mkdir /tmp/var
mkdir /tmp/run
mkdir /var/lib
mkdir -p /var/log
touch /tmp/resolv.conf

/bin/load-modules.sh MODULES

syslogd
dmesg --console-level 2
hostname --file /etc/hostname
ifup lo
setupcon
chvt 2

