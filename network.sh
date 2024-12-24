#! /usr/bin/env bash
##	Keeping it portable!
echo	'Network Configuration'
echo	'---'
nm-tool
echo	'---'
echo 	-n	"DNS Servers: " &&	resolvectl
echo 	-n	"DNS Servers: " &&	cat	/etc/resolv.conf
echo	'---'
echo 	-n	"FQDN(s): "	&&	hostname -A
echo 	-n	"Interface-IP(s): "	&&	hostname -I
echo	'---'
echo 	"IP Configuration: "
ip link
echo 	"Ethernet Configuration: "
ipconfig
echo 	"WiFi Configuration: "
iwconfig
echo	'---'
echo 	-n	"Public IP: "	&&	curl https://wtfismyip.com/text ; echo;
###	find public IP adress
###	NOTE:	Lack of connectivity will result in a 404 error!
###	alternative Service:	ipinfo.io/ip
###	see:	https://stackoverflow.com/questions/14594151/methods-to-detect-public-ip-address-in-bash/14594304#14594304
echo	-n	"Prefered Public IP: "	&&	curl http://api64.ipify.org ; echo;
###	find public IPv4 or IPv6 based off OS & Network preference
###	see:	https://www.ipify.org/
###	NOTE:	Lack of connectivity will result in a 404 error!
echo	-n	"Public IPv4: "	&&	curl http://ip4only.me/api/ ; echo;
###	find public IPv4 adress
###	see:	http://ip4only.me/
###	NOTE:	Lack of IPv4 connectivity will result in a 404 error!
echo	-n	"Public IPv6: "	&&	curl https://ip6only.me/api/ ; echo;
###	find public IPv6 adress
###	see:	https://ip6only.me/
###	NOTE:	Lack of IPv6 connectivity will result in a 404 error!


##	TODO: Add more mess to check for...

echo	'==='

exit