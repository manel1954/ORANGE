#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_DMR2YSF.sh" /home/orangepi/Desktop/Abrir_DMR2YSF.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/DMR2YSF_ON.png" /home/orangepi/Desktop/Abrir_DMR2YSF.desktop
sed -i "10c Name[es_ES]=Cerrar DMR2YSF" /home/orangepi/Desktop/Abrir_DMR2YSF.desktop

cd /home/orangepi/DMR2YSF
mate-terminal --geometry 104x8+1274+665 --title=DMR2YSF -x ./DMR2YSF DMR2YSF.ini &

cd /home/orangepi/MMDVMHost
mate-terminal --geometry 104x8+1274+790 --title=MMDVMDMR2YSF -x ./DMR2YSF MMDVMDMR2YSF.ini &

cd /home/orangepi/YSFClients/YSFGateway
mate-terminal --geometry 104x9+1274+987 --title=YSFGATEWAY -x ./YSFGateway YSFGateway.ini

