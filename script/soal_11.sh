#melkor 
apt update && apt install openbsd-inetd telnetd -y
nano /etc/inetd.conf
service openbsd-inetd restart
service telnetd start

#adduser di melkor
adduser eru #pass eru

#eru
apt update && apt install telnet -y
telnet 192.223.1.2 

#lalu masukkan user eru dari melkor