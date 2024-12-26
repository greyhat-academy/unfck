#! /usr/bin/env bash
## Keeping it portable!

echo 'unfck will collect infos now...'
echo ''

echo 'Generating unique Report-ID & Header...'
rm report-id.log
touch report-id.log
report-id.sh > report-id.log
echo 'Done!'
echo ''

echo 'Collecting Packages...'
rm packages.log
rm packages.log
touch packages.log
./packages.sh > packages.log
# Write output to file
echo 'Done!'
sleep 1
echo ''

echo 'Collecting Hardware Info...'
rm hardware.log
touch hardware.log
./hardware.sh > hardware.log
# Write output to file
echo 'Done!'
sleep 1
echo ''

echo 'Collecting Network Info...'
rm network.log
touch network.log
./network.sh > network.log
# Write output to file
echo 'Done!'
sleep 1
echo ''


echo 'compiling report...'
rm unfck.log.old
# remove outdated version
mv unfck.log unfck.log.old
# Backup old file
touch unfck.log
cat report-id.log > unfck.log
cat packages.log >> unfck.log
cat hardware.log >> unfck.log
cat network.log  >> unfck.log
echo '===' >> unfck.log
echo 'test completed!' >> unfck.log
date +%s  >> unfck.log
echo '===' >> unfck.log
## make report

rm report-id.log
rm packages.log
rm hardware.log
rm network.log
## cleanup

echo  'done!'
echo ''
echo -ne '\007'
echo ''
echo 'Please see unfck.log for the detailed report!'
echo 'you can now use tools like diff to find out what's different between this and other reports.
echo ''

exit

