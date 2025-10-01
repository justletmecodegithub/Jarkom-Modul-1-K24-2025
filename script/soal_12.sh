#melkor
apt update && apt install -y netcat-openbsd
apt install -y apache2
nc --zv profix.1.2 21

service apache2 start
nc --zv profix.1.2 80
nc --zv profix.1.2 666
