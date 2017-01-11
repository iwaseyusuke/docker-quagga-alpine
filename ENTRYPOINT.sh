#!/bin/ash

echo "Starting zebra daemon..."
/usr/sbin/zebra -d -f /etc/quagga/zebra.conf

for name in $@
do
    if [ $name = "zebra" ]
    then
        echo "zebra daemon is already started -> skip"
    elif [ -s "/usr/sbin/$name" ]
    then
        if [ ! -f "/etc/quagga/$name.conf" ]
        then
            echo "Creating empty config for $name daemon..."
            touch /etc/quagga/$name.conf
        fi
        echo "Starting $name daemon..."
        /usr/sbin/$name -d -f /etc/quagga/$name.conf
    else
        echo "Unknown daemon: $name"
    fi
done

vtysh
