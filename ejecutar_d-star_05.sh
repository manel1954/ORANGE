#!/bin/bash
sed -i "6c Exec=sh cerrar_d-star_05.sh" /home/orangepi/Desktop/D-Star.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/DSTAR_ON.png" /home/orangepi/Desktop/D-Star.desktop
sed -i "10c Name[es_ES]=Cerrar ircDDB" /home/orangepi/Desktop/D-Star.desktop
sed -i "11c Path=/home/orangepi/ORANGE" /home/orangepi/Desktop/D-Star.desktop

sed -i "1c D-STAR=ON" /home/orangepi/status.ini

#Abre ircDDBGateway
ircddbgateway -gui
