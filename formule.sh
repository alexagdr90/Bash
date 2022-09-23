#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT

# Ctrl+C
function ctrl_c(){

    echo -e "\n${yellowColour}[*]${endColour}${purpleColour} Exiting...${endColour}"; sleep 1
    tput cnorm; exit 1
}

# Funtions
function funcion_degrees_to_kelvins(){
    t=$(($RANDOM%100))
    let kelvin=$t+275
    echo "====================================================================================================="
    echo -e "[*]${greenColour}degrees_to_kelvins${endColour}";
    echo -e "${purpleColour}The formula for degrees to kelvins is:${endColour}${redColour} t (in °) + 275 ${endColour}";
    echo -e "${blueColour}The degrees are:${endColour}";
    echo -e "${yellowColour}$t${endColour}";
    echo -e "${turquoiseColour}Enter the result in kelvins:${endColour}"
    read result   
    #echo -e "${purpleColour}The formula for degrees to kelvins is:${endColour}${redColour} t (in °) + 275 ${endColour}"
    echo -e "${purpleColour}The temperature in kelvins is:${endColour}${redColour} $kelvin${endColour}";
}


function funcion_area_triangle(){
    base=$(($RANDOM%100))
    height=$(($RANDOM%100))
    let area="$base * $height"
    echo "====================================================================================================="
    echo -e "[*]${greenColour}area_triangle${endColour}";
    echo -e "${purpleColour}The Area Formula is:${endColour}${redColour} base * height${endColour}";
    echo -e "${blueColour}The base is:${endColour}";
    echo -e "${yellowColour}$base${endColour}";
    echo -e "${blueColour}The height is:${endColour}";
    echo -e "${yellowColour}$height${endColour}";
    echo -e "${turquoiseColour}Enter the result:${endColour}"
    read result
    #echo -e "${purpleColour}The Area Formula is:${endColour}${redColour} base * height${endColour}";
    echo -e "${purpleColour}The result of the area is:${endColour}${redColour} $area${endColour}";
}

function funcion_addition(){
    number1=$(($RANDOM%100))
    number2=$(($RANDOM%100))
    let add="$numero1 + $numero2"
    echo "====================================================================================================="
    echo -e "[*]${greenColour}addition${endColour}";
    echo -e "${purpleColour}The formula for the sum is:${endColour}${redColour} number 1 + number 2${endColour}"
    echo -e "${blueColour}The number 1 is:${endColour}";
    echo -e "${yellowColour}$number1${endColour}";
    echo -e "${blueColour}The number 2 is:${endColour}";
    echo -e "${yellowColour}$number2${endColour}";
    echo -e "${turquoiseColour}Enter the result${endColour}"
    read result
    #echo -e "${purpleColour}The formula for the sum is:${endColour}${redColour} number 1 + number 2${endColour}"
    echo -e "${purpleColour}The result of the sum is:${endColour}${redColour} $add${endColour}";
}

counter=0

while [ $counter -lt 5 ];
do
    fun=$(grep function $0 | shuf -n 1 | cut -d " " -f 2 | cut -d "(" -f 1) 2>/dev/null
    $fun
    let counter=$(( counter + 1 ))
    sleep 3s
done
