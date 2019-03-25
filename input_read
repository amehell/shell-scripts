#!/usr/bin/env bash

def_path="/home/"
ok=0
input=

while [[ $ok != 1 ]]; do
        echo "Presione [ENTER] para confirmar $def_path como ruta o escriba una ruta nueva"
        read -p "Ruta de Paneles: " input
        if [[ $input == "" ]]; then
                ok=1
        else
                def_path=$input

        fi
done


echo "Usando $def_path !"
