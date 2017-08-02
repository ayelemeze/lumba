#!/bin/sh
IP=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install xrdp -y && sudo apt-get install xfce4 -y && echo xfce4-session >~/.xsession && sudo apt-get install firefox -y && clear && sudo service xrdp restart
echo 
echo !!!!!!!!!!!!!!!!!!!!!!!!
echo !! Kurulum tamamlandı.!!
echo !!!!!!!!!!!!!!!!!!!!!!!!
echo
echo '           Kurulum Bilgileri'
echo '###########################################'
echo "   Sunucu adresi: $IP"
echo 'Kullanıcı adı ve şifreniz putty e giriş yaptığınız bilgilerle aynı.'
echo 'Bir sorun oluşursa kendi başınıza çözmeye çalışın.'
echo '###########################################'
