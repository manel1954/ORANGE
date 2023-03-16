#!/bin/bash

ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

sed -i "6c Exec=sudo sh cerrar_solofusion.sh" /home/orangepi/Desktop/AbrirsoloYSF.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/SOLO_YSF_ON.png" /home/orangepi/Desktop/AbrirsoloYSF.desktop
sed -i "11c Name[es_ES]=Cerrar solo FUSION" /home/orangepi/Desktop/AbrirsoloYSF.desktop

sed -i "12c SOLOFUSION=ON" /home/orangepi/status.ini
echo "\33[38;5;138m"
cd /home/orangepi/YSFClients/YSFGateway
mate-terminal --geometry 101x11+1277+665 --title=YSFGateway -x ./YSFGateway YSFGateway.ini & 
echo "\33[38;5;138m"
cd /home/orangepi/MMDVMHost
mate-terminal --geometry 101x16+1277+880 --title=MMDVMFUSION -x sudo ./MMDVMFUSION MMDVMFUSION.ini

