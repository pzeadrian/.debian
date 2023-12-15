#!/bin/bash

if [[ -d "$HOME/.local/share/fonts/ProductMononoki" ]]; then
    echo "Fonts already installed, but refreshing them, just in case..." 
    rm -R $HOME/.local/share/fonts/ProductMononoki/
    if [[ -d "$HOME/Documents/" ]]; then
        echo "English..."
        cp -R $HOME/Documents/.debian/fonts/* $HOME/.local/share/fonts/
        echo "Fonts Installed succesfully."
    elif [[ -d "$HOME/Documentos/" ]]; then
        echo "Spanish..."
        cp -R $HOME/Documentos/.debian/fonts/* $HOME/.local/share/fonts/
        echo "Fonts Installed succesfully."
    else
        echo "No font installed, no Spanish or English detected..."
    fi

else
    echo "Error: Fonts not installed... Installing right now..."
    if [[ -d "$HOME/.local/share/fonts/" ]]; then
        echo "Fonts directory already exists..." 
        if [[ -d "$HOME/Documents/" ]]; then
            echo "English..."
            cp -R $HOME/Documents/.debian/fonts/* $HOME/.local/share/fonts/
            echo "Fonts Installed succesfully."
        elif [[ -d "$HOME/Documentos/" ]]; then
            echo "Spanish..."
            cp -R $HOME/Documentos/.debian/fonts/* $HOME/.local/share/fonts/
            echo "Fonts Installed succesfully."
        else
            echo "No font installed, no Spanish or English detected..."
        fi
    else
        echo "Creating fonts directory.."
        mkdir -p $HOME/.local/share/fonts
        if [[ -d "$HOME/Documents/" ]]; then
            echo "English..."
            cp -R $HOME/Documents/.debian/fonts/* $HOME/.local/share/fonts/
            echo "Fonts Installed succesfully."
        elif [[ -d "$HOME/Documentos/" ]]; then
            echo "Spanish..."
            cp -R $HOME/Documentos/.debian/fonts/* $HOME/.local/share/fonts/
            echo "Fonts Installed succesfully."
        else
            echo "No font installed, no Spanish or English detected..."
        fi
    fi
fi
