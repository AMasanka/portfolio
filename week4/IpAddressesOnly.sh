#!/bin/bash
net_IpInfo="$(./IpInfo.sh)"
IpAddresses1=$(echo "$net_IpInfo" | sed -n '/IP Address: /{
p
}')
IpAddresses2=$(echo "$net_IpInfo" | sed -n '/IP Address:6 /{
p
}')
echo -e "IP addresses on this computer are:\n$IpAddresses1 $IpAddresses2"