#!/bin/bash

sudo killall MMDVMBM
cd /home/orangepi/ORANGE
sed -i "7c MMDVMBM=OFF" /home/orangepi/status.ini

sed -i "6c Exec=sh ejecutar_bm_05.sh" /home/orangepi/Desktop/BM.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/DMR.png" /home/orangepi/Desktop/BM.desktop
sed -i "10c Name[es_ES]=Abrir BM" /home/orangepi/Desktop/BM.desktop
