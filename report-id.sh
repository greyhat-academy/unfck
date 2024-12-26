#! /usr/bin/env bash
## Keeping it portable!
echo'unfck'
echo'See https://github.com/greyhat-academy/unfck for details'
echo '==='
echo 'REPORT HEADER'
echo '---'
echo-n REPORT-ID: && cat /proc/sys/kernel/random/uuid
echo -n "REPORT CREATED: " && date
echo -n "UNIXTIME: " && date +%s
echo -n "SYSTEM: " && hostname -A
echo -n "IP(s): " && hostname -I
echo -n "SALT: " && </dev/urandom tr -dc '0123456789ABCDEF' | head -c64; echo;
echo '==='
echo ''
exit
