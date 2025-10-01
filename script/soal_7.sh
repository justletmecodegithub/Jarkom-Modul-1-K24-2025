# root eru 
apt update && apt install -y vsftpd ftp

nano /etc/vsftpd.conf
    listen=YES
    listen_ipv6=NO
    anonymous_enable=NO
    local_enable=YES
    write_enable=YES
    chroot_local_user=YES
    allow_writeable_chroot=YES

service vsftpd start

#pengecekan ftp
ftp

mkdir -p /srv/ftp/shared

#addduser
adduser ainur 
usermod -d /srv/ftp/shared ainur
chown ainur:ainur /srv/ftp/shared


adduser melkor
usermod -d /srv/ftp/shared melkor
chmod 700 /srv/ftp/shared


#membuat text random
nano cobalagi.txt
cat cobalagi.txt

#connect user
ftp 192.223.1.1

#ftp 
put cobalagi.txt
get cobalagi.txt

ascii atau binary