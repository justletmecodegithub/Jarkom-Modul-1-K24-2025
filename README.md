# Jarkom Modul 1 K24 2025

### Kelompok K24
| Nama                                  |    NRP      |
|---------------------------------------|-------------|
| Muhammad Ahsani Taqwiim Rakhman       | 5027241099  |
| Oryza Qiara Ramadhani                 | 5027241084  |

## Laporan Resmi Jarkom Modul 1 K24

1. pembuatan topologi 

![alt text](image/image_1.png)

Eru yang berperan sebagai Router membuat dua Switch/Gateway. Dimana Switch 1 akan menuju ke dua Ainur yaitu Melkor dan Manwe. Sedangkan Switch 2 akan menuju ke dua Ainur lainnya yaitu Varda dan Ulmo. Keempat Ainur tersebut diberi perintah oleh Eru untuk menjadi Client.

2. Eru pada saat itu Arda (Bumi) masih terisolasi dengan dunia luar, maka buat agar Eru dapat tersambung ke internet.

![alt text](image/image_2.png)

Dari sini dapat dilihat bahwa setelah dilakukan ping kepada google.com memandakan bahwa eru dapat tersambung dengan internet

3. Setiap Ainur (Client) dapat terhubung satu sama lain

Pada setiap config client diberi tambahan `echo "nameserver 192.168.122.1" > /etc/resolv.conf` dengan konfigurasi ini, setiap client dapat berkomunikasi lintas subnet melalui Router.

![alt text](image/image_3.png)

nah dari sini itu dicoba nge ping dari melkor ke varda ` ping -c 4 192.223.2.2 `

4. Memastikan agar setiap Client dapat tersambung ke internet 

lakukan `ping google.com -c 3` pada semua client agar memastikan semua tersambung ke internet

![alt text](image/image_4.png)

5. Eru dan para Ainur lainnya meminta agar semua konfigurasi tidak hilang saat semua node di restart.

Dengan menambahkan 
`# root eru `
`apt update && apt install -y iptables`
`iptables -t nat -A POSTROUTING -s 192.223.0.0/16 -o eth0 -j MASQUERADE`
`echo "nameserver 192.168.122.1" > /etc/resolv.conf`

Biar konfigurasi nggak hilang setelah restart, IP static ditulis di /root/.bashrc , aturan NAT disimpan pakai iptables-persistent, IP forwarding diaktifin lewat /etc/resolv.conf, dan DNS juga diset supaya client tetap bisa internetan.

![alt text](image/image_5.png)

6. Melkor Menyusup dengan mengnalisis Paket Komunikasi Manwe dan Eru dengan Wireshark

Dimulai dengan mengunduh file traffic.zip di client melkor dan kemudian menjalankan file tersebut setelah di ekstrak `./traffic.sh`  Lalu jalankan capture agar file dianalisis di wireshark dan setelah itu semua paket bisa di jadikan dalam satu file `nomor6.pcapng` 

![alt text](image/image_6.png)

7. Konfigurasi FTP Server pada Node Eru

Untuk meningkatkan keamanan, Eru membuat sebuah FTP Server di node miliknya menggunakan vsftpd. Kali ini diminta untuk membuat user baru yaitu
- ainur → memiliki hak akses write & read ke direktori /srv/ftp/shared.
- melkor → tidak memiliki hak akses sama sekali.

Dari screenshot di bawah ini itu menunjukkan bagaimana perbandingan dari dua user yang dimana ada yang bisa melakukan `put cobalagi.txt` dan apabila tidak bisa maka user tidak akan bisa untuk login ftp.

![alt text](image/image_7.png)
![alt text](image/image_7_1.png)

8. Ulmo Mengirimkan Data Ramalan Cuaca ke Eru via FTP

Ulmo sebagai penjaga perairan perlu mengirimkan data ramalan cuaca ke node Eru melalui FTP Server yang sudah dikonfigurasi sebelumnya. Pada proses ini Ulmo bertindak sebagai FTP Client, sedangkan Eru sebagai FTP Server.

Langkah yang dilakukan yaitu mengunduh file cuaca.zip, mengekstraknya, lalu melakukan koneksi ke FTP Server Eru dengan user ainur yang memiliki hak akses penuh. Setelah login berhasil, file cuaca.txt dan mendung.jpg diunggah ke direktori FTP menggunakan perintah put.

Screenshot di bawah ini menunjukkan proses upload file berhasil dilakukan menggunakan user ainur.

![alt text](image/image_8.png)

9. 

10. 
![alt text](image/image_10.png)

### 11. 
![alt text](image/image_11.png)

### 14.
1.How many packets are recorded in the pcapng file?
![WhatsApp Image 2025-10-01 at 22 09 12_7b264e42](https://github.com/user-attachments/assets/e9cd1ec4-0904-49d1-8c06-33f310d98d29)
bisa kita liat berapa banyak packet, di paling bawah packet '500358'

