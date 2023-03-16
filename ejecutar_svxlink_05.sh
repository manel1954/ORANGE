#!/bin/bash

sed -i "6c Exec=sh cerrar_svxlink_05.sh" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/SVXLINK_ON.png" /home/orangepi/Desktop/Abrir_SVXLink.desktop
sed -i "4c Name[es_ES]=Cerrar SVXLINK" /home/orangepi/Desktop/Abrir_SVXLink.desktop

sed -i "8c SVXLINK=ON" /home/orangepi/status.ini

echo "\33[1;32m"

sudo svxlink
