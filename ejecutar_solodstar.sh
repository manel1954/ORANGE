#!/bin/bash
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
sed -i "6c Exec=sudo sh cerrar_solodstar.sh" /home/orangepi/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/SOLO_D-STAR_ON.png" /home/orangepi/Desktop/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Cerrar solo D-STAR" /home/orangepi/Desktop/AbrirsoloDstar.desktop

sed -i "13c SOLODSTAR=ON" /home/orangepi/status.ini

cd /home/orangepi/MMDVMHost
echo "{$VERDE}"

mate-terminal --geometry 104x16+1151+880 --title=SOLODSTAR -x ./MMDVMDSTAR MMDVMDSTAR.ini & 
ircddbgateway -gui

sed -i "6c Exec=mate-terminal -x sh -c 'cd /home/orangepi/ORANGE/;sh ejecutar_solodstar.sh'" /home/orangepi/Desktop/AbrirsoloDstar.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/SOLO_D-STAR.png" /home/orangepi/Desktop/AbrirsoloDstar.desktop
sed -i "11c Name[es_ES]=Abrir solo D-STAR" /home/orangepi/Desktop/AbrirsoloDstar.desktop
sed -i "13c SOLODSTAR=OFF" /home/orangepi/status.ini


sed -i "6c Exec=mate-terminal --geometry 104x16+1151+880 --title=RADIO -x sh ejecutar_mmdvm_05.sh" /home/orangepi/Desktop/MMDVM.desktop