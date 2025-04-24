#!/bin/bash

#Welcoming / Apresentação
echo "#####################|| Gecko Manager ||#######################"
echo "#                                                             #"
echo "# --> welcome to Gecko Manager                                #"
echo "# -->(project made by kilko and pantuga)                      #"
echo "# -->(for more info and credits check README.md)              #"
echo "#                                                             #"
echo "#-------------------------------------------------------------#"
echo "#        enjoy the installer (gecko Manager v0.2) (amd64)     #"													
echo "#                                                             #"
echo "###############################################################"

#Path to the root folder (~/gecko/gecko/Projects/gecko-manager) / caminho até a pasta de root  (~/gecko/gecko/Projects/gecko-manager)
#GM stands for GeckoManager / GM significa GeckoManager
GM="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#error counter for future / contador de erros para o futuro
ErrorCount=0

#Function to wait a second before displayng next image / função para esperar um segundo antes da proxima menagem
function wait_second {
	echo "$1"
	sleep 1
}

sleep 2

# Array to store temporary setup packages / array para guardar pacotes temporarios
Tmpp=()

# Function to mark a package as temporary / função para marcar um pacote para temporaria
mark_temp_package() {
    local pkg=("$1")
    Tmpp+=("$pkg")
    echo "$1" >> "$CD/Logs/temp_packages.log" 
}

#create the folder config
mkdir -p "$GM/config"

#CD stands for ConfigDirectory / CD signinifica pasta Config
CD="$GM/config"

#check and warn you if the folder config was created / ver e avisar se a pasta config foi criada
if [ -d "$CD" ]; then
    echo "[INFO] Folder Config created: $CD"
else
    echo "[ERROR] Folder config not created: $CD"
    ((ErrorCount++))
fi


#create the files / criar os ficheiros
touch "$CD/core_config.conf"
#core_config is the config for the absolute needed to the installer / core_config é ficheiro config para o installador foncionar
touch "$CD/system_config.conf"
#system_config is the config for the system, like sis init or kernel /system_config é o ficheiro config para o sistema ex: kernel
touch "$CD/ui_config.conf"
#ui_config is for things like WM or DE the configs you choose for that go there / ui_config é para coisas como WM or DE as coisas que escolheres para aquilo vão lá


# Check if the conf files were created / ver se os conf files foram criados
if [ -f "$CD/core_config.conf" ]; then
    echo "[INFO] File created: core_config.conf"
else
    echo "[ERROR] Failed to create: core_config.conf"
    ((ErrorCount++))
fi

if [ -f "$CD/system_config.conf" ]; then
    echo "[INFO] File created: system_config.conf"
else
    echo "[ERROR] Failed to create: system_config.conf"
    ((ErrorCount++))
fi

if [ -f "$CD/ui_config.conf" ]; then
    echo "[INFO] File created: ui_config.conf"
else
    echo "[ERROR] Failed to create: ui_config.conf"
    ((ErrorCount++))
fi

#check if ErrorCount is greater than zero, if it is closes the install / verifica se ErrorCount é maior que zero se sim fechar o programa
if [ "$ErrorCount" -gt 0 ]; then
	echo "[FATAL] $ErrorCount error(s) ocurred. exiting installer"
	exit 1
else 
	echo "[INFO] no errors ocurred continuing"
fi

sleep 2

echo "#####################|| Gecko Manager ||#######################"
echo "#                                                             #"
echo "# --> SECOND STEP OF INSTALLATION                             #"
echo "# --> need to install essential packages for installation     #"
echo "#    ______________________________________________           #"
echo "#    |                                            |           #"
echo "#    |  PLEASE CHOOSE CAREFULLY                   |           #"
echo "#    |____________________________________________|           #"													
echo "#                                                             #"
echo "###############################################################"


# path to the networkingapps / caminho ate a networking apps
DEB_DIR="$GM/Fdrivers/NetworkApps"

# Function to install a package / função para instalar os pacotes
install_package() {
    local pkg="$1"
    local deb_file="$DEB_DIR/$pkg"
    
    if [ -f "$deb_file" ]; then
        echo "Installing $pkg from $deb_file..."
        sudo dpkg -i "$deb_file"
        mark_temp_package "$pkg" 
        #Mark it as temporary
    else
        echo "Package $pkg not found in $DEB_DIR!"
    fi
}

# Ask user if they want to install the essential packages / pergunta au usuario se ele quer baixar os pacotes essenciais
echo "Do you want to install the following packages? (yes/no)"
packages=("wireless-tools" "iw" "wpasupplicant" "firmware-iwlwifi" "firmware-realtek" "firmware-brcm80211" "network-manager" "net-tools" "resolvconf" "rfkill")
for pkg in "${packages[@]}"; do
    echo "$pkg"
done

read -p "Install these packages? (yes/no): " answer

if [[ "$answer" == "yes" ]]; then
    for pkg in "${packages[@]}"; do
        install_package "$pkg"
    done
fi

# Array cleanup and marking script 
CLEANUP_SCRIPT="$GM/core/postinstall_cleanup.sh"
chmod +x "$CLEANUP_SCRIPT"
echo "[INFO] Cleanup script created at $CLEANUP_SCRIPT"
