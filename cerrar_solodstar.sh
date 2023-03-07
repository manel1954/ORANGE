#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh -c 'cd /home/orangepi/ORANGE/;sh ejecutar_solodstar.sh'" /home/orangepi/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/SOLO_D-STAR.png" /home/orangepi/Desktop/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Abrir solo D-STAR" /home/orangepi/Desktop/AbrirsoloDstar.desktop


sed -i "13c SOLODSTAR=OFF" /home/orangepi/status.ini

sudo killall MMDVMDSTAR
sudo killall ircddbgateway
