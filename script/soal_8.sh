#root ulmo 
apt update && apt install -y unzip 
apt install ftp -y && apt install vsftpd -y

#ulmo
source /root/.bashrc
wget --no-check-certificate -O cuaca.zip "https://drive.usercontent.google.com/u/0/uc?id=11ra_yTV_adsPIXeIPMSt0vrxCBZu0r33&export=download"

unzip cuaca.zip 

#ftp
nano /etc/vsftpd.conf
service vsftpd start #jangan lupa aktif in ftp di eru yak
ftp 192.223.1.1 #sebagai ainur
put cuaca.txt 
put mendung.jpg

#jangan lupa start capture di gns3 yg ke ulmo