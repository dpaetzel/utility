#!/usr/bin/env sh

if (! `netctl start w`); then
    ip link set enp3s0 up
    ip route add default via 192.168.0.1
    cat > /etc/resolv.conf << EOF
domain ancient.world
nameserver 192.168.0.2
nameserver 192.168.0.1
EOF
fi
