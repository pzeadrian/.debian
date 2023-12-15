#!/bin/bash

if [ -d "$HOME/Documents/" ]; then

    echo "English..."
    cd $HOME/Documents/.debian/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpaper

    cp -rf $HOME/Documents/.debian/apps/* $HOME/.config/
    cp -f $HOME/Documents/.debian/apps/.bashrc $HOME/
    cp -rf $HOME/Documents/.debian/wallpaper/* $HOME/.wallpaper/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documents/.debian/scripts/resolution $res

elif [ -d "$HOME/Documentos/" ]; then
    echo "Spanish..."

    cd $HOME/Documentos/.debian/
    git pull
    cd
    mkdir -p $HOME/.config
    mkdir -p $HOME/.wallpaper

    cp -rf $HOME/Documentos/.debian/apps/* $HOME/.config/
    cp -f $HOME/Documentos/.debian/apps/.bashrc $HOME/
    cp -rf $HOME/Documentos/.debian/wallpaper/* $HOME/.wallpaper/

    read -p "RESOLUTION (1080 or 768): " res
    sh $HOME/Documentos/.debian/scripts/resolution $res

else 
    echo "No english or spanish detected..."

fi
