#!/bin/bash
sed -i '6c Exec=sudo sh -c "cd /home/orangepi/ORANGE/;sh ejecutar_DMR2NXDN.sh"' /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/DMR2NXDN.png" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop
sed -i "10c Name[es_ES]=Abrir DMR2NXDN" /home/orangepi/Desktop/Abrir_DMR2NXDN.desktop

#sed -i "14c DMR2NXDN=OFF" /home/orangepi/status.ini 

sudo killall MMDVMHost
sudo killall DMR2NXDN
sudo killall NXDNGateway
