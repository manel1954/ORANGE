#!/bin/bash


cd /home/orangepi/ORANGE



sed -i "4c Exec=sh -c 'cd /home/orangepi/ORANGE; sudo sh cerrar_dstarrepeater_30.sh'" /home/orangepi/Desktop/Abrir_D-STARRepeater
sed -i "5c Icon=/home/orangepi/ORANGE/REPEATER_ON.png" /home/orangepi/Desktop/Abrir_D-STARRepeater
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/orangepi/Desktop/Abrir_D-STARRepeater
sed -i "9c dstarrepeater=ON" /home/orangepi/status.ini	
sudo dstarrepeater


