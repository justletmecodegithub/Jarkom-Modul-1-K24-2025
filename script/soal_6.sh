# root melkor 
apt update && apt install -y unzip 

#melkor 
source /root/.bashrc
wget --no-check-certificate -O traffic.zip "https://drive.usercontent.google.com/u/0/uc?id=1bE3kF1Nclw0VyKq4bL2VtOOt53IC7lG5&export=download"

unzip traffic.zip
chmod +x traffic.sh
./traffic.sh