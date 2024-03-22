#!/bin/bash
if [ "$1" == "" ];
then
	echo -e "\e[1;33;40m#################################################\e[0m"
	echo -e "\e[1;33;47m|->                PARSING HTML               <-|\e[0m"
	echo -e "\e[1;33;47m|->      = ^.^ =      MR_CAT     = ^.^ =      <-|\e[0m"
	echo -e "\e[1;33;47m|->  ./parsing_cat_html.sh www.alvo.com.br    <-|\e[0m"
	echo -e "\e[1;33;40m#################################################\e[0m"
else
wget "$1"
	echo -e "\e[1;32;40m#################################################\e[0m"
	echo -e "\e[1;32;41m|->              Buscando Hosts...            <-|\e[0m"
	echo -e "\e[1;32;40m#################################################\e[0m"
cat index.html | grep "href" | grep "http" | cut -d '"' -f2 | cut -d '/' -f3 | grep '\.'

	echo -e "\e[1;32;40m#################################################\e[0m"
	echo -e "\e[1;32;41m|->             Resolvendo Hosts...           <-|\e[0m"
	echo -e "\e[1;32;40m#################################################\e[0m"
for url in $(cat index.html | grep "href" | grep "http" | cut -d '"' -f2 | cut -d '/' -f3 | grep '\.');
do host $url
done
rm index.html
fi
