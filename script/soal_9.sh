#eru
source /root/.bashrc
wget --no-check-certificate -O kitab_penciptaan.zip "https://drive.usercontent.google.com/u/0/uc?id=11ua2KgBu3MnHEIjhBnzqqv2RMEiJsILY&export=download'"
unzip kitab_penciptaan.zip

#ftp eru 
nano /etc/vsftpd.conf
    listen=YES
	listen_ipv6=NO
	anonymous_enable=NO
	local_enable=YES
	write_enable=YES
	chroot_local_user=YES
	allow_writeable_chroot=YES

service vsftpd restart
ftp 192.223.1.1 #sebagai ainur
put kitab_penciptaan.txt
binary

#ftp manwe
chmod 55 /srv/ftp/shared
service vsftpd restart
ftp 192.223.1.1 #sebagai ainur
get kitab_penciptaan.txt

nano cobalagi.txt
ftp 192.223.1.1
put cobalagi.txt