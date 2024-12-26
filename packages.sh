#! /usr/bin/env bash
##	Keeping it portable!
echo 'Packages List'
echo '---'
echo 'Kernel'
uname
uname -r
echo '---'
echo 'Packages installed'
apt list --installed
dpkg -l
rpm -qa
yum list installed
dnf list installed
pacman -Q
flatpak list
snap list
##	TODO: Add more mess to check for...

echo '==='

exit