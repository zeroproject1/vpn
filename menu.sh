#!/bin/bash
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
IZIN=$( curl http://akses.zero-vpn-stores.tech:81/aksesvpnstore | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear 
cat /usr/bin/zero | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e " $bl ║ \e[032;1mCPU Model:\e[0m$bd $cname  "
	echo -e " $bl ║ \e[032;1mNumber Of Cores:\e[0m$bd $cores"
	echo -e " $bl ║ \e[032;1mCPU Frequency:\e[0m$bd $freq MHz"
	echo -e " $bl ║ \e[032;1mTotal Amount Of RAM:\e[0m$bd $tram MB"
	echo -e " $op ║ \e[032;1mSystem Uptime:\e[0m$bd $up"
	echo -e " $op ║ \e[032;1mIsp Name:\e[0m$bd $ISP"
        echo -e " $op ║ \e[032;1mIp Vps:\e[0m$bd $IPVPS"
	echo -e " $op ║ \e[032;1mCity:\e[0m$bd $CITY"
	echo -e " $op ║ \e[032;1mTime:\e[0m$bd $WKT                                       ╥"
echo -e  "  ╠════════════════════════════════════════════════════════════╣" | lolcat
echo -e  "  ║                       ┃MENU OPTIONS┃                       ║ \e[m" |lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╣" | lolcat
echo -e  " \e[32;1m ║\e[m$bd 1$bl]\e[m$bd SSH & OpenVPN Menu                                      ╨"
echo -e  " $gl ║\e[m$bd 2$bl]\e[m$bd Panel Wireguard "
echo -e  " $gl ║\e[m$bd 3$bl]\e[m$bd Panel L2TP & PPTP Account"
echo -e  " $gl ║\e[m$bd 4$bl]\e[m$bd Panel SSTP  Account"
echo -e  " $bl ║\e[m$bd 5$bl]\e[m$bd Panel SSR & SS Account"
echo -e  " $bl ║\e[m$bd 6$bl]\e[m$bd Panel V2Ray"
echo -e  " $bl ║\e[m$bd 7$bl]\e[m$bd Panel VLess"
echo -e  " $bl ║\e[m$bd 8$bl]\e[m$bd Panel TRojanGO"
echo -e  " $bl ║\e[m$bd 9$bl]\e[m$bd Panel TRojan                                            ╥"
echo -e   "  \e[1;32m╠════════════════════════════════════════════════════════════╣\e[m" | lolcat
echo -e   "  ║                       ┃SYSTEM MENU┃                        ║\e[m" | lolcat 
echo -e   "  \e[1;32m╠════════════════════════════════════════════════════════════╣\e[m" | lolcat
echo -e   " $mg ║\e[m$bd 10$bl]\e[m$bd Add Subdomain Host For VPS                             ╨"
echo -e   " $mg ║\e[m$bd 11$bl]\e[m$bd Renew Certificate V2RAY"
echo -e   " $mg ║\e[m$bd 12$bl]\e[m$bd Change Port All Account"
echo -e   " $mg ║\e[m$bd 13$bl]\e[m$bd Autobackup Data VPS"
echo -e   " $mg ║\e[m$bd 14$bl]\e[m$bd Backup Data VPS"
echo -e   " $mg ║\e[m$bd 15$bl]\e[m$bd Restore Data VPS"
echo -e   " $gl ║\e[m$bd 16$bl]\e[m$bd Webmin Menu"
echo -e   " $gl ║\e[m$bd 17$bl]\e[m$bd Limit Bandwith Speed Server"
echo -e   " $gl ║\e[m$bd 18$bl]\e[m$bd Check Usage of VPS Ram" 
echo -e   " $gl ║\e[m$bd 19$bl]\e[m$bd Reboot VPS"
echo -e   " $gl ║\e[m$bd 20$bl]\e[m$bd Speedtest VPS"
echo -e   " $gl ║\e[m$bd 21$bl]\e[m$bd Information Display System" 
echo -e   " $gl ║\e[m$bd 22$bl]\e[m$bd Info Script Auto Install"
echo -e   " $gl ║\e[m$bd 23$bl]\e[m$bd Install BBR"
echo -e   " $bl ║\e[m$bd 24$bl]\e[m$bd Set Auto Reboot"
echo -e   " $bl ║\e[m$bd 25$bl]\e[m$bd Status Tunneling"
echo -e   " $bl ║\e[m$bd 26$bl]\e[m$bd Clear Log"
echo -e   " $bl ║\e[m$bd 27$bl]\e[m$bd Restart All Service"
echo -e   " $bl ║\e[m$bd 28$bl]\e[m$bd Add ID Cloudflare"
echo -e   " $bl ║\e[m$bd 29$bl]\e[m$bd Cloudflare Add-Ons" 
echo -e   " $bl ║\e[m$bd 30$bl]\e[m$bd Pointing BUG                                           ╥"
echo -e   "  \e[1;32m╠════════════════════════════════════════════════════════════╣\e[m" | lolcat
echo -e   "  ║ x)   Exit                                                  ║\e[m" | lolcat
echo -e   "  \e[1;32m╚════════════════════════════════════════════════════════════╝\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-30 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
sstpp
;;
5)
ssssr
;;
6)
v2raay
;;
7)
vleess
;;
8)
trojanGO
;;
9)
trojaan
;;
10)
add-host
;;
11)
certv2ray
;;
12)
change-port
;;
13)
autobackup
;;
14)
backup
;;
15)
restore
;;
16)
wbmn
;;
17)
limit-speed
;;
18)
ram
;;
19)
reboot
;;
20)
speedtest
;;
21)
info
;;
22)
about
;;
23)
bbr
;;
24)
auto-reboot
;;
25)
running
;;
26)
clear-log
;;
27)
restart
;;
28)
cff
;;
29)
cfd
;;
30)
cfh
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac
