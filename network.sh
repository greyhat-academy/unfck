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
echo 	"NTP Configuration: "
ntpstat
ntpq -pn
timedatectl status
cat	/etc/systemd/timesyncd.conf
echo	'---'
echo 	"IP Configuration: "
echo	"Routing Inforation"
ip -4 route show default
ip -6 route show default
(/sbin/ip route | awk '/default/ { print $3 }')
traceroute '(/sbin/ip route | awk '/default/ { print $3 }')'
ping -a -b -c 1 -D '(/sbin/ip route | awk '/default/ { print $3 }')'
netstat -rn
route -n
echo	'---'
echo 	"Ethernet Configuration: "
ipconfig
ip link
echo	'---'
echo 	"WiFi Configuration: "
iwconfig
echo	'---'
echo 	-n	"Prefered Public IP: "	&&	curl https://wtfismyip.com/text ; echo;
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
echo	'---'

echo	"Reachability Test"
echo	"IPv4 hosts"
ping -a -b -c 1 -D 94.103.153.176
traceroute 94.103.153.176
ping -a -b -c 1 -D 9.9.9.9
traceroute 9.9.9.9
echo	'---'

echo	"IPv6 hosts"
ping -a -b -c 1 -D 2a02:990:219:1:ba:1337:cafe:3
traceroute 2a02:990:219:1:ba:1337:cafe:3
ping -a -b -c 1 -D 2620:fe::fe
traceroute 2620:fe::fe
echo	'---'

echo	"Domains"
ping -a -b -c 1 -D time.nist.gov
traceroute time.nist.gov
ping -a -b -c 1 -D ntp.nict.jp
traceroute ntp.nict.jp
ping -a -b -c 1 -D ntp.ripe.net
traceroute ntp.ripe.net
ping -a -b -c 1 -D pool.ntp.org
traceroute pool.ntp.org
ping -a -b -c 1 -D time.esa.int
traceroute time.esa.int
ping -a -b -c 1 -D ptbtime4.ptb.de
traceroute ptbtime4.ptb.de
ping -a -b -c 1 -D irc.canternet.org
traceroute irc.canternet.org
ping -a -b -c 1 -D irc.2600.net
traceroute irc.2600.net
ping -a -b -c 1 -D dw.com
traceroute dw.com
nc -vz dw.com 443
ping -a -b -c 1 -D onion.torproject.org
traceroute onion.torproject.org
nc -vz torproject.org 443
echo	'---'

echo	"Tor Connectivity"
ping -a -b -c 1 -D dwnewsgngmhlplxy6o2twtfgjnrnjxbegbwqx6wnotdhkzt562tszfid.onion
ping -a -b -c 1 -D xao2lxsmia2edq2n5zxg6uahx6xox2t7bfjw6b5vdzsxi7ezmqob6qid.onion
ping -a -b -c 1 -D duckduckgogg42xjoc72x3sjasowoarfbgcmvfimaftt6twagswzczad.onion
echo	'---'

##	TODO: Add more mess to check for...

echo	'==='

exit