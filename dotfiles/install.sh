#!/bin/bash

sudo apt install \
bspwm \
sxhkd \
polybar \
rofi \
picom \
slick-greeter \
feh \
-y

mkdir -p ~/.config/{bspwm,sxhkd,polybar,rofi,picom,slick-greeter,feh}

#slick-greeter copy files
cp ./slick-greeter/lightdm.conf /home/$USER/.config/slick-greeter/
sudo rm /etc/lightdm/lightdm.conf && sudo ln -s /home/$USER/.config/slick-greeter/lightdm.conf /etc/lightdm/

#bspwm + sxhkd
chmod +x ./bspwm/bspwmrc && cp ./bspwm/bspwmrc /home/$USER/.config/bspwm/
cp ./sxhkd/sxhkdrc /home/$USER/.config/sxhkd/

#picom
cp ./picom/picom.conf /home/$USER/.config/picom/

#polybar
cp ./polybar/config.ini /home/$USER/.config/polybar/

#feh
cp ../sources/wallpaper/wallpaper.png /home/$USER/.config/feh/
