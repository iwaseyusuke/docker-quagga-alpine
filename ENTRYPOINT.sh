#!/bin/ash

/usr/sbin/zebra -d -f /etc/quagga/zebra.conf
/usr/sbin/ripd -d -f /etc/quagga/ripd.conf
/usr/sbin/ripngd -d -f /etc/quagga/ripngd.conf
/usr/sbin/ospfd -d -f /etc/quagga/ospfd.conf
/usr/sbin/ospf6d -d -f /etc/quagga/ospf6d.conf
/usr/sbin/bgpd -d -f /etc/quagga/bgpd.conf
/usr/sbin/isisd -d -f /etc/quagga/isisd.conf

vtysh
