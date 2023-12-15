#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.debian/
    git pull
    cd
    rm -r $HOME/Documents/.debian/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documents/.debian/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documents/.debian/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documents/.debian/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documents/.debian/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documents/.debian/apps/
    #
    # Sway
    cp -rf $HOME/.config/sway/ $HOME/Documents/.debian/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documents/.debian/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documents/.debian/apps/
    #
    # Cava
    cp -rf $HOME/.config/cava $HOME/Documents/.debian/apps/

    cd $HOME/Documents/.debian/
    git add -A
    git commit -m "$1"
    git push

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.debian/
    git pull
    cd
    rm -r $HOME/Documentos/.debian/apps/*
    # 
    # Bash
    cp -f $HOME/.bashrc $HOME/Documentos/.debian/apps/
    # 
    # Alacritty
    cp -rf $HOME/.config/alacritty/ $HOME/Documentos/.debian/apps/
    #
    # Dunst
    cp -rf $HOME/.config/dunst/ $HOME/Documentos/.debian/apps/
    #
    # MPV
    cp -rf $HOME/.config/mpv/ $HOME/Documentos/.debian/apps/
    #
    # Rofi
    cp -rf $HOME/.config/rofi/ $HOME/Documentos/.debian/apps/
    #
    # Sway
    cp -rf $HOME/.config/sway/ $HOME/Documentos/.debian/apps/
    #
    # Waybar
    cp -rf $HOME/.config/waybar/ $HOME/Documentos/.debian/apps/
    #
    # Swaylock
    cp -rf $HOME/.config/swaylock $HOME/Documentos/.debian/apps/
    #
    # Cava
    cp -rf $HOME/.config/cava $HOME/Documentos/.debian/apps/

    cd $HOME/Documentos/.debian/
    git add -A
    git commit -m "$1"
    git push

else 
    echo "No english or spanish detected..."

fi
