#!/bin/bash
#
#--------------------------------------------------------------------+
#	cowsay.sh						     |
#								     |
#	Estudo de shellscript. Script para testar se o comando       |
#	"cowsay" já está instalado no sistema. 			     |
#								     |
#	Autor: Gabriel Lavarini <lavarinimoreira@gmail.com>	     |
#	github.com/lavarinimoreira				     |
#								     |
#--------------------------------------------------------------------+
#

# Confere se o pacote "cowsay" já está instalado na máquina.
if dpkg -l | grep -q 'cowsay'
# Caso já esteja instalado, executa o bloco de comando abaixo:
then
	clear && echo -e "\n\nSalve, vaquinha!" && cowsay Aeeew!
else 
# Caso não esteja instalado, o pacote "cowsay" será instalado na máquina:
	sudo apt install cowsay && clear && echo -e "\n\nSalve, vaquinha!" && cowsay Aeeew!
fi


