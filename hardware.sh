#! /usr/bin/env bash
##	Keeping it portable!
echo 'Hardware List'
echo '---'
echo 'Kernel'
uname
uname -r
uname -r
echo '---'
echo 'General Hardware'
sudo lshw
echo '---'
echo 'PCI Devices'
sudo lspci
echo '---'
echo 'USB Devices'
sudo lsus
echo '---'
echo 'Filesystems'
sudo df -h
echo '---'
echo 'block devices'
sudo lsblk
echo '---'
echo 'Directly-attached Physical Storage Block Devices'
sudo lsblk -e7
echo '---'
echo 'System Infos'
screenfetch
neofetch
fastfetch
fetch

#TODO: add mess to check for...

echo '==='

exit