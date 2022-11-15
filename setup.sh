#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# My Telegram : https://t.me/Akbar218
# ==========================================
# Color
MYIP=$(wget -qO- ipinfo.io/ip);
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'

if [ -f "/etc/xray/domain" ]; then
echo "Script Already Installed"
exit 0
fi
mkdir /var/lib/akbarstorevpn;
echo "IP=${MYIP}" >> /var/lib/akbarstorevpn/ipvps.conf

# ==========================================
# ==========================================
# Link 
akbarvpn="raw.githubusercontent.com/Deadrz/mini/master/"

# Getting

echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/Deadrz/vps/master/ipvps.txt | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Telegram : https://t.me/@Putri24v"
exit 0
fi

clear

wget https://${akbarvpn}/cf.sh && chmod +x cf.sh && ./cf.sh
wget https://${akbarvpn}/install.sh && chmod +x install.sh && ./install.sh

cd /usr/bin/

wget -O addvmess "https://${akbarvpn}/addv2ray.sh"
wget -O addvless "https://${akbarvpn}/addvless.sh"
wget -O addtrojan "https://${akbarvpn}/addtrojan.sh"
wget -O delvmess "https://${akbarvpn}/delv2ray.sh"
wget -O delvless "https://${akbarvpn}/delvless.sh"
wget -O deltrojan "https://${akbarvpn}/deltrojan.sh"
wget -O cekvmess "https://${akbarvpn}/cekv2ray.sh"
wget -O cekvless "https://${akbarvpn}/cekvless.sh"
wget -O cektrojan "https://${akbarvpn}/cektrojan.sh"
wget -O renewvmess "https://${akbarvpn}/renewv2ray.sh"
wget -O renewvless "https://${akbarvpn}/renewvless.sh"
wget -O renewtrojan "https://${akbarvpn}/renewtrojan.sh"
wget -O certv2ray "https://${akbarvpn}/certv2ray.sh"
wget -O addtrgo "https://${akbarvpn}/addtrgo.sh"
wget -O deltrgo "https://${akbarvpn}/deltrgo.sh"
wget -O renewtrgo "https://${akbarvpn}/renewtrgo.sh"
wget -O cektrgo "https://${akbarvpn}/cektrgo.sh"
wget -O menu "https://${akbarvpn}/menu.sh"

chmod +x addvmess
chmod +x addvless
chmod +x addtrojan
chmod +x delv2ray
chmod +x delvless
chmod +x deltrojan
chmod +x cekvmess
chmod +x cekvless
chmod +x cektrojan
chmod +x renewvmess
chmod +x renewvless
chmod +x renewtrojan
chmod +x certv2ray
chmod +x addtrgo
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x menu

rm -f /root/cf.sh
rm -f /root/install.sh
clear
echo ""
echo "=================================-HAYOSIA STORE PROJECT-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - XRAYS Vmess TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - XRAYS Vless TLS         : 443"  | tee -a log-install.txt
echo "   - XRAYS Vless None TLS    : 80"  | tee -a log-install.txt
echo "   - XRAYS Trojan            : 80"  | tee -a log-install.txt
echo "   - Tr Go                   : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "----------------------Script Created By HAYOSIA STORE PROJECT----------------------" | tee -a log-install.txt
echo ""
echo " Reboot 15 Sec"
sleep 15
rm -f setup.sh
history -c
reboot
