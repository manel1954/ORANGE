#!/bin/bash

# recupera los iconos pero no los que se han quedado con e icono de un libro
# y quita los semaforos que se queden encendidos por error al reiniciar
cp /home/orangepi/Desktop/*.desktop /home/orangepi
cp /home/orangepi/ORANGE/Desktop/*.desktop /home/orangepi/Desktop
#
#cp /home/orangepi/icons.screen0-1904x1021.rc /home/orangepi/.config/xfce4/desktop
xfdesktop --reload
#
cp /home/orangepi/*.desktop /home/orangepi/Desktop 
sudo rm /home/orangepi/*.desktop
sudo chmod 777 -R /home/orangepi/Desktop

# recupera los iconos que se han borrado y se han convertido en icono de un libro
# pero no quita los semaforos que se queden encendidos por error al reiniciar



#sudo cp /home/orangepi/ORANGE/Desktop/*.* /home/orangepi/Desktop
#
#sudo chmod 777 -R /home/orangepi/Desktop
#
#cp /home/orangepi/icons.screen0-1904x1021.rc /home/orangepi/.config/xfce4/desktop
#xfdesktop -R                           