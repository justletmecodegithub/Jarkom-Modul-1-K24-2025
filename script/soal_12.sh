#melkor
apt update && apt install -y netcat-openbsd
nc --zv profix.1.2 21
nc --zv profix.1.2 80
nc --zv profix.1.2 666
