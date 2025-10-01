#client
telnet 10.15.43.32 [route]

#melkor
auto eth0
iface eth0 inet static
	address 192.223.1.2
	netmask 255.255.255.0
	gateway 192.223.1.1

echo "nameserver 192.168.122.1" > /etc/resolv.conf


#menwe
auto eth0
iface eth0 inet static
	address 192.223.1.3
	netmask 255.255.255.0
	gateway 192.223.1.1

echo "nameserver 192.168.122.1" > /etc/resolv.conf

#varda
auto eth0
iface eth0 inet static
	address 192.223.2.2
	netmask 255.255.255.0
	gateway 192.223.2.1

echo "nameserver 192.168.122.1" > /etc/resolv.conf

#ulmo
auto eth0
iface eth0 inet static
	address 192.223.2.3
	netmask 255.255.255.0
	gateway 192.223.2.1

echo "nameserver 192.168.122.1" > /etc/resolv.conf

