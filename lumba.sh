#!/bin/sh
# İP adresi için gerekli kod. #
IP=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
# Güncelleme yapılıyor. #
sudo apt-get update
# xrdp yüklüyor. #
sudo apt-get install xrdp
# xfce4 yüklüyor. #
sudo apt-get install xfce4
# İngilizcem bitti. #
echo xfce4-session >~/.xsession
# Ekrandakileri siliyor. #
clear && clear
# xrdp'yi yeniden başlatıyor. #
sudo service xrdp restart
# Kurulum bilgileri ekranda gösteriliyor. #
echo 
echo !!!!!!!!!!!!!!!!!!!!!!!!
echo !! Kurulum tamamlandı.!!
echo !!!!!!!!!!!!!!!!!!!!!!!!
echo
echo '           Kurulum Bilgileri'
echo '###########################################'
echo "   Sunucu adresi: $IP"
echo 'Kullanıcı adı ve şifreniz putty e giriş yaptığınız bilgilerle aynı.'
echo 'Bir sorun oluşursa kendi başınıza çözemeye çalışın.'
echo '###########################################'
