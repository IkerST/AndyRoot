#get ip (not working :v)
#$ip = IniRead(@AppDataDir & "\Andy\HandyAndy\HandyAndy.ini", "Current", "ipaddr", "error")
#connect adb to Andy
#adb.exe connect $ip
#start adb as root
adb.exe root
#install SuperSU.apk
adb.exe install SuperSU.apk
#install su
adb.exe push su /data/tmp/
adb.exe shell mount -o remount,rw /system
adb.exe shell cp /data/tmp /system/xbin
adb.exe shell chmod 06755 /system/xbin/su
adb.exe reboot
echo "Please update su through SuperSU app"
pause
exit
