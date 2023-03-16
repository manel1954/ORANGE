#!/bin/bash

cd /home/orangepi/ORANGE

sed -i "6c Exec=sh cerrar_dstarrepeater_05.sh" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/REPEATER_ON.png" /home/orangepi/Desktop/Dstar_solo.desktop
sed -i "10c Name[es_ES]=Cerrar D-STAR Repeater" /home/orangepi/Desktop/Dstar_solo.desktop


sed -i "9c dstarrepeater=ON" /home/orangepi/status.ini	

sudo dstarrepeater


