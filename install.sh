#!/bin/bash
echo "
░█████╗░░░░░░░███╗░░░███╗██╗░██████╗░██████╗░░█████╗░████████╗███████╗
██╔══██╗░░░░░░████╗░████║██║██╔════╝░██╔══██╗██╔══██╗╚══██╔══╝██╔════╝
██║░░╚═╝█████╗██╔████╔██║██║██║░░██╗░██████╔╝███████║░░░██║░░░█████╗░░
██║░░██╗╚════╝██║╚██╔╝██║██║██║░░╚██╗██╔══██╗██╔══██║░░░██║░░░██╔══╝░░
╚█████╔╝░░░░░░██║░╚═╝░██║██║╚██████╔╝██║░░██║██║░░██║░░░██║░░░███████╗
░╚════╝░░░░░░░╚═╝░░░░░╚═╝╚═╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝
Made by: CyberRide
github: https://github.com/CyberRide"| lolcat;
echo -e "${GREEN}"
echo "Do you want to install c-migrate? (y/n)"
echo -n -e "${BLUE}c-migrate >>${NC} "

read choice
INSTALL_DIR="/usr/share/doc/c-migrate"
BIN_DIR="/usr/bin/"
if [ $choice == y ]; then
        echo "[*] Checking Internet Connection ..."
	wget -q --tries=10 --timeout=20 --spider https://google.com
	
	if [[ $? -eq 0 ]]; then
	    echo -e ${WHITE}"[✔] Loading ... "
            echo "[✔] Checking directories..."
	    if [ -d "$INSTALL_DIR" ]; then
	        echo "[!] A Directory c-migrate Was Found.. Do You Want To Replace It ? [y/n]:" ;
	        read input
	        if [ "$input" = "y" ]; then
	            sudo rm -R "$INSTALL_DIR"
	        else
	            exit
	        fi
	    fi
        echo "";
        sudo mkdir "$INSTALL_DIR"
	    sudo cp -r cm .upload "$INSTALL_DIR";
	    echo "#!/bin/bash
	    bash "$INSTALL_DIR"/cm" '${1+"$@"}' > cm;
	    sudo chmod +x cm;
		sudo chmod +x .upload;
	    sudo cp cm .upload /usr/bin/;
	   clear

if [ -d "$INSTALL_DIR" ]; then
        echo "";
        echo "[✔] Successfuly Installed !!! ";
        echo "";
        echo "";
        echo -e "[+]++++++++++++++++++++++++++++++++++++++++++++++++[+]"
        echo -e "[+]						   [+]"
        echo -e "[+]  ✔✔✔ Now Just Type In Terminal (cm) ✔✔✔  [+]"
        echo -e "[+]                                                [+]"
        echo -e "[+]++++++++++++++++++++++++++++++++++++++++++++++++[+]"
    else
        echo "[✘] Installation Failed !!! [✘]";
        exit
 fi
fi
fi