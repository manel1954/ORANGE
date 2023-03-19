#!/bin/bash
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

sed -i "6c Exec=sh cerrar_svxlink_05.sh" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/SVXLINK_ON.png" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "4c Name[es_ES]=Cerrar SVXLINK" /home/orangepi/Desktop/Abrir_SVXLink.desktop

sed -i "8c SVXLINK=ON" /home/orangepi/status.ini

echo "{$CIAN}"
sudo svxlink

sed -i "6c Exec=sh ejecutar_svxlink_05.sh" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/SVXLINK_OFF.png" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "4c Name[es_ES]=Abrir SVXLINK" /home/orangepi/Desktop/Abrir_SVXLink.desktop