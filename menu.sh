#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"

echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y             Telegram : https://t.me/Putri24v $wh"
echo -e "$y               Mini Auto Script By SSHAXOR $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
echo -e "$y XRAYS / VMESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.Create Account XRAYS Vmess Websocket"
echo -e "$yy 2$y.Delete Account XRAYS Vmess Websocket"
echo -e "$yy 3$y.Extending Account XRAYS Vmess Active Life"
echo -e "$yy 4$y.Check User Login XRAYS Vmess"
echo -e "$yy 5$y.Renew Certificate XRAYS Account"
echo -e ""
echo -e "$y XRAYS / VLESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 6$y.Create Account XRAYS Vless Websocket"
echo -e "$yy 7$y.Delete Account XRAYS Vless Websocket"
echo -e "$yy 8$y.Extending Account XRAYS Vless Active Life"
echo -e "$yy 9$y.Check User Login XRAYS Vless"
echo -e ""
echo -e "$y XRAYS / TROJAN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 10$y.Create Account XRAYS Trojan"
echo -e "$yy 11$y.Delete Account XRAYS Trojan"
echo -e "$yy 12$y.Extending Account XRAYS Trojan Active Life"
echo -e "$yy 13$y.Check User Login XRAYS Trojan"
echo -e ""
echo -e "$y TROJAN GO $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 14$y.Create Account Trojan Go"
echo -e "$yy 15$y.Delete Account Trojan Go"
echo -e "$yy 16$y.Extending Account Trojan Go Active Life"
echo -e "$yy 17$y.Check User Login Trojan Go"
echo ""
echo -e ""
read -p "Select From Options [ 1 - 60 ] : " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
delvmess
;;
3)
renewvmess
;;
4)
cekvmess
;;
5)
certv2ray
;;
6)
addvless
;;
7)
delvless
;;
8)
renewvless
;;
9)
cekvless
;;
10)
addtrojan
;;
11)
deltrojan
;;
12)
renewtrojan
;;
13)
cektrojan
;;
14)
addtrgo
;;
15)
deltrgo
;;
16)
renewtrgo
;;
17)
cektrgo
;;
*)
clear
menu
;;
esac
