#!/bin/bash

sed -i "6c Exec=sh ejecutar_dstarrepeater_05.sh" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/DMR.png" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "10c Name[es_ES]=Abrir D-STAR Repeater" /home/orangepi/Desktop/Dstar_solo.desktop

#cierra ircDDBGateway
sudo killall ircddbgateway
#cierra D-STARRepeater 
sudo killall dstarrepeater