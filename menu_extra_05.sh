#!/bin/bash
while true
do
clear
RED="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
echo "\33[1;32m   ********************************************************************"
echo "   *      SCript para hacer actualizaciones y varios \33[1;33mV.02.07\33[1;32m          *"
echo "   *                      \33[1;31mby EA3EIZ & EA4AOJ\33[1;32m                          *"
echo "   ********************************************************************"
echo "\33[1;36m   1)\33[1;32m Actualizar imagen"
echo "\33[1;36m   2)\33[1;37m Grabar Nextion"
echo "\33[1;36m   3)\33[1;36m Copiar Tarjeta SD a la memoria interna EMMC"
echo "\33[1;36m   4)\33[1;36m Cambiar clave VNC"
echo "\33[1;36m   5)\33[1;37m CONEXIONES DVRPTR DCS018"
echo "\33[1;36m   6)\33[1;33m INSTALAR ANYDESK (Aplicación escritorio remoto)"
echo "\33[1;36m   7)\33[1;37m RESTAURAR ICONOS DEL ESCRITORIO"
echo "\33[1;36m   8)${VERDE} MENÚ ACTUALIZAR MMDVM_HS (Pincho Low Cost)"
echo "\33[1;36m   9)${AMARILLO} ACTUALIZAR LISTA DE REFLECTORES D-STAR (DV4MINI-IRCDDB)"
echo ""
echo "\33[1;36m   0)\33[1;34m Salir del script \33[1;31m OJO!! no salir con ctrl+c ni con la x"
echo ""
echo -n "\33[1;36m   Elige una opción: " 
read escoger_menu
echo ""
case $escoger_menu in

2) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> GRABAR NEXTION >>>>>>>>"
			            #sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        #sleep 5
                        cd /home/orangepi/ORANGE/
                        sudo sh grabar_nextion_05.sh
                        exit;
		                break;;
		                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
3) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> COPIAR TARJETA MSD EN EMMC   >>>>>"
			            sudo nand-sata-install
                        exit;
		                break;;
		                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
4) echo ""
while true
do
clear
	                    ejecutar1=S
		                case $ejecutar1 in
			            [sS]* ) echo ""
			            echo ">>>>>>>>> CAMBIAR CLAVE VNC >>>>>>>>"
                        x11vnc --storepasswd
                        sleep 2
                        exit;
		                break;;
						[nN]* ) echo ""
clear
exit;
break;;
esac
done;;
5) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> GRABAR NEXTION ORIGINAL >>>>>>>>"
                        #sudo cp -f /home/orangepi/MMDVMHost/Nextion_G4KLX/nextion.py /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #cd /home/orangepi/MMDVMHost/Nextion_DB2OE
                        #sudo python nextion.py NX3224T024.tft /dev/ttyUSB0
                        #sleep 5
                        cd /home/orangepi/ORANGE/
                        sudo sh menu_dcs018_06.sh
                        exit;
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
6) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> INSTALANDO ANYDESK >>>>>>>>"
                        sudo rm -R /home/orangepi/.anydesk
                        cd /home/orangepi/Downloads
                        wget http://download.anydesk.com/rpi/anydesk_2.9.4-1_armhf.deb
                        sudo dpkg -i anydesk_2.9.4-1_armhf.deb
                        sudo apt-get -f install
                        sudo dpkg -i anydesk_2.9.4-1_armhf.deb
                        echo "Anydesk Instalado"
                        sleep 2
                        break;;
                        [nN]* ) echo ""
clear
exit;
break;;
esac
done;;


7) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""

                                #Coloca icono Abrir AMBE SERVER en el escritorio
                                cp -R /home/orangepi/ORANGE/Desktop /home/orangepi/
                                sudo chmod +x -R /home/orangepi/Desktop
                      
                                echo ">>>>>>>>> RESTAURANDO ICONOS ESCRITORIO <<<<<<<<<"
                                sleep 3
                                clear
                                echo ""
                                echo "\33[1;32m<<<<<<<<< PROCESO FINALIZADO >>>>>>>>>"
                                sleep 3
                                break;;
                                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
8) echo ""
while true
do
clear
                                ejecutar1=S
                                case $ejecutar1 in
                                [sS]* ) echo ""
                                sh flash_mmdvm_hs.sh
                                echo ""
                                break;;
                                [nN]* ) echo ""
clear
exit;
break;;
esac
done;;
1) echo ""
while true
do
clear

                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        git pull 
                        sleep 3
                        cd /home/orangepi/
                        sudo chmod 777 ORANGE
                        clear
                        cd /home/orangepi/AUTOSTART
                        git pull

                        sudo usermod -a -G dialout orangepi
                        sudo usermod -a -G uucp orangepi
                        cd /home/orangepi/
                        
                        sudo rm -R qt
                        
                        mkdir /home/orangepi/qt
                        
                        cd /home/orangepi/ORANGE
                        
                        cp qt* /home/orangepi/qt

                        chmod 777 -R /home/orangepi/qt
			break;;
			[nN]* ) echo ""
clear
exit;
break;;
esac
done;;
9) echo ""
while true
do
clear
                        ejecutar1=S
                        case $ejecutar1 in
                        [sS]* ) echo ""
                        echo ">>>>>>>>> ACTUALIZANDO >>>>>>>>"
                        cd /usr/local/share/opendv/
                        #cambiado el 13-05-2020
                        sudo curl --fail -o DExtra_Hosts.txt -s http://www.arrg.us/HF/DExtra_Hosts.txt
                        #sudo curl --fail -o DExtra_Hosts.txt -s http://www.pistar.uk/downloads/DExtra_Hosts.txt
                        sudo curl --fail -o DCS_Hosts.txt -s http://www.pistar.uk/downloads/DCS_Hosts.txt
                        sudo curl --fail -o DPlus_Hosts.txt -s http://www.pistar.uk/downloads/DPlus_Hosts.txt
                        mv DExtra_Hosts.txt xref.ip


                        exit;
                        break;;
                        [nN]* ) echo ""
                        clear
                        exit;
break;;
esac
done;;
0) echo ""
clear
echo "\33[1;33m   ******************************"
echo "   *                            *"
echo "   *     CERRANDO SCRIPT        *"
echo "   *                            *"
echo "   ******************************"
sleep 1
clear
exit;;	
esac
done

