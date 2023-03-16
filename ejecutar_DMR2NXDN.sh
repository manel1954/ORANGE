#!/bin/bash

sed -i "6c Exec=sh cerrar_DMR2NXDN.sh" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/DMR2NXDN_ON.png" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "10c Name[es_ES]=Cerrar DMR2NXDN" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop


#sed -i "14c NXDN2DMR=ON" /home/orangepi/status.ini

cd /home/orangepi/DMR2NXDN
mate-terminal --geometry 101x8+1277+665 --title=DMR2NXDN -x ./DMR2NXDN DMR2NXDN.ini & 
sleep 1
cd /home/orangepi/MMDVMHost
mate-terminal --geometry 101x8+1277+797 --title=MMDVMDMR2NXDN -x ./MMDVMHost MMDVMDMR2NXDN.ini &
sleep 1
cd /home/orangepi/NXDNClients/NXDNGateway
mate-terminal --geometry 101x9+1277+987 --title=NXDNGateway -x ./NXDNGateway NXDNGateway.ini


