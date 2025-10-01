# root eru 
apt update && apt install -y iptables
iptables -t nat -A POSTROUTING -s 192.223.0.0/16 -o eth0 -j MASQUERADE
echo "nameserver 192.168.122.1" > /etc/resolv.conf