#!/bin/bash	                
                        sh /home/orangepi/ORANGE/ejecutar_ImagenActualizada.sh &
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

                        
