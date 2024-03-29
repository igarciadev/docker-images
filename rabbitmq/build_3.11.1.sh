#!/bin/bash

clear
version=3.11.1
banner="** DOCKER IMAGE BUILD - MYSQL v"$version" **"
s=$( printf "%${#banner}s" )

echo -e '\n'${s// /*}'\n'$banner'\n'${s// /*}'\n'

if docker-compose --version | grep -q "docker-compose version"; then
    docker-compose --env-file ./$version/.env config
    confirm=0
    read -p "Are you sure you want to create a docker image with this config? [Y/n]: " addconfirm
    if [[ $addconfirm == "" ]] || [[ $addconfirm == "Y" ]] || [[ $addconfirm == "y" ]]; then
        docker-compose --env-file ./$version/.env up -d
    else
        echo -e "> Nothing to build"'\n'
    fi
else
    echo -e "> No docker-compose package found. You must to be install docker-compose before to build an image from a docker-compose file"'\n'
fi
