#!/bin/bash

helpme() {
echo "
TO SEE SPECIFIC INFO, AFTER ./<FILENAME> ENTER NEEDED ARGUMENT FROM THE LIST SHOWN BELOW

'-g': Gpu info
'-r': Ram info
'-c': Cpu info
'-s': SDA info
'-o': OS info
"
}

gpu() {
        echo GPU info
        glxinfo | grep Device
        glxinfo | grep Version
        glxinfo | grep memory
}
cpu() {
        echo CPU info
        lscpu | grep Model
        lscpu | grep Core
        lscpu | grep MHz
}
ram() {
        echo RAM info   
        free -m
}
sda() {
        echo SDA info
        df -h | grep File
        df -h | grep /dev/sda
}
os() {
        echo OS info
        cat /etc/os-release
}

if [[ "$1" = "-r" ]]; then
	ram

elif [[ "$1" = "-g" ]]; then
	gpu

elif [[ "$1" = "-o" ]]; then
	os

elif [[ "$1" = "-s" ]]; then
	sda

elif [[ "$1" = "-c" ]]; then
	cpu

else 
	helpme
fi
