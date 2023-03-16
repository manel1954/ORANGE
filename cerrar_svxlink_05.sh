#!/bin/bash
sudo killall svxlink
sed -i "6c Exec=mate-terminal --geometry 74x23+696+50 --title=SVXLINK -x sh ejecutar_svxlink_05.sh
sed -i "7c Icon=/home/orangepi/ORANGE/ECHOLINK.png" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "4c Name[es_ES]=Abrir SVXLINK" /home/orangepi/Desktop/Abrir_SVXLink.desktop

sed -i "8c SVXLINK=OFF" /home/orangepi/status.ini



