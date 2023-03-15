#!/bin/bash

sed -i "6c Exec=mate-terminal -x sh cerrar_DMR2YSF.sh" /home/orangepi/Desktop/Abrir_DMR2YSF.desktop
sed -i "7c Icon=/home/orangepi/ORANGE/DMR2YSF_ON.png" /home/orangepi/Desktop/Abrir_DMR2YSF.desktop
sed -i "10c Name[es_ES]=Cerrar DMR2YSF" /home/orangepi/Desktop/Abrir_DMR2YSF.desktop

cd /home/orangepi/DMR2YSF
xterm -geometry 88x6+1274+665 -bg black -fg yellow -fa ‘verdana’ -fs 9x -T CONSOLA_DMR2YSF -e ./DMR2YSF DMR2YSF.ini &

cd /home/orangepi/MMDVMHost
xterm -geometry 88x9+1274+787 -bg black -fg yellow -fa ‘verdana’ -fs 9x -T CONSOLA_MMDVMDMR2YSF -e ./DMR2YSF MMDVMDMR2YSF.ini &

cd /home/orangepi/YSFClients/YSFGateway
xterm -geometry 88x9+1274+987 -bg black -fg yellow -fa ‘verdana’ -fs 9x -T CONSOLA_YSFGATEWAY -e ./YSFGateway YSFGateway.ini
#sudo mate-terminal -x ./YSFGateway YSFGateway.ini
