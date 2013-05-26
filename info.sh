# Current Battery Charge
	## Credit: http://bit.ly/KObFdh
usrBatteryPercent=`pmset -g ps  |  sed -n 's/.*[[:blank:]]+*\(.*%\).*/\1/p'`
usrBattery="ioreg -n AppleSmartBattery -r"
usrIsCharging=`$usrBattery | awk '/IsCharging/ {print $3}'`
usrFullyCharged=`$usrBattery | awk '/FullyCharged/ {print $3}'`
usrExtConnected=`$usrBattery | awk '/ExternalConnected/ {print $3}'`

# Battery Charge Remaining
usrBattMins=`ioreg -rn AppleSmartBattery | awk '/TimeRemaining/ {print $3}'`;
H=$(($usrBattMins / 60));
M=$(($usrBattMins - ($usrBattMins / 60) * 60));

if [ "$usrIsCharging" = "Yes" ]; then
	usrCharge="${usrBatteryPercent} (Charging)"
elif [ "$usrFullyCharged" = "Yes" -a "$usrExtConnected" = "Yes" ]; then
	usrCharge="${usrBatteryPercent} (Battery Full)"
elif [ "$usrIsCharging" = "No" -a "$usrExtConnected" = "Yes" ]; then	usrCharge="${usrBatteryPercent} (Not Charging)"
elif [ "$usrBattMins" -lt "700" -a "$usrBattMins" != "0" ]; then
	usrCharge=`printf ${usrBatteryPercent}'% (%i:%.02i Remaining)' $H $M`
else
	usrCharge="${usrBatteryPercent}"
fi

[ "$usrCharge" ] && echo "${bold}Charge:${nobold}\t\t${usrCharge}" # Time Machine Backup
	## Credit for date code: http://bit.ly/NlMKyn
	## Credit for Ordinal code: http://bit.ly/Kw3fIN
tmBackup=`defaults read /Library/Preferences/com.apple.TimeMachine Destinations | awk -F\" 'NR==3 {print $4}'`
tmBackupDate=`date -j -f "%Y-%m-%d %H:%M:%S %z" "$tmBackup" "+%d/%m"`

if [ "$tmBackupDate" = "" ]; then
	tmNoBackup="No Backup Available"
elif [ "$tmBackupDate" = "`date '+%d/%m'`" ]; then
	tmLastBackup="Today, at %-I:%M %p"
elif [ "$tmBackupDate" = "`date -v-1d '+%d/%m'`" ]; then
	tmLastBackup="Yesterday, at %-I:%M %p"
else
	ordinal=`date -j -f "%Y-%m-%d %H:%M:%S %z" "$tmBackup" "+%-e" | sed -E 's/(1)$/\1st/'| sed -E 's/(2)$/\1nd/' | sed -E 's/([^1]3)$/\1rd/' | sed -E 's/([0-9])$/\1th/'`
	tmLastBackup="${ordinal} %B %Y"
fi

tmLastBackup=`date -j -f "%Y-%m-%d %H:%M:%S %z" "$tmBackup" "+${tmLastBackup}"`
[ "$tmNoBackup" ] && tmLastBackup=$tmNoBackup
echo "${bold}Backup:${nobold}\t\t${tmLastBackup}"


# Get iCloud Usage Quota from System Preferences (24h Refresh)
	## User needs to be signed into iCloud via SysPrefs
usrIPv4=`ifconfig | awk '/broadcast/ {print $2;exit}'`
if [ "`date -v -24H +'%Y%j%H%M'`" -gt "`defaults read w3k.glet iCloud_Upd`" ]; then
	iCloud_Value=$(osascript ~/Downloads/iCloudQuota.scpt)
	defaults write w3k.glet iCloud_Storage $iCloud_Value
	defaults write w3k.glet iCloud_Free "$(echo $iCloud_Value | awk '{print $1*1073741824}')"
	defaults write w3k.glet iCloud_Used "$(echo $iCloud_Value | awk '{print ($4-$1)*1073741824}')"
	defaults write w3k.glet iCloud_Total "$(echo $iCloud_Value | awk '{print $4*1073741824}')"
	defaults write w3k.glet iCloud_Perc "$(echo $iCloud_Value | awk '{printf "%.f%%", ($4-$1)/$4*100}')"
	defaults write w3k.glet iCloud_Upd "$(date +'%Y%j%H%M')"
elif [ "`defaults read-type w3k.glet iCloud_Upd`" != "Type is string" ]; then
	defaults write w3k.glet iCloud_Upd "$(date -v -24H +'%Y%j%H%M')"	
fi

if [ "defaults read w3k.glet iCloud_Storage" = "Details not available." -a "$usrIPv4" ]; then
	defaults write w3k.glet iCloud_Upd "$(date -v -24H +'%Y%j%H%M')"
fi

[ "`defaults read w3k.glet iCloud_Storage`" ] && echo "${bold}iCloud:${nobold}\t\t$(defaults read w3k.glet iCloud_Perc) ($(hrFormat $(defaults read w3k.glet iCloud_Used)) used)"


echo "  ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯"

# Check GPU in use
	## Display GPU in use if GPU count is 2
gpu_count=`system_profiler -xml SPDisplaysDataType | awk '/sppci_model/ {ct=ct+NF}; END {print ct-1}'`
gpu_inf="system_profiler SPDisplaysDataType"
gpu_intel=`$gpu_inf | awk 'NR==15 {print $3}'`

if [ "$gpu_intel" = "LCD" -a "$gpu_count" = "2" ]; then
	# gpu_curr="Intergrated"
	gpu_curr=`$gpu_inf | awk -F": " 'NR==5 {print $2}'`
elif [ "$gpu_count" = "2" ]; then
	#gpu_curr="Discrete"
	gpu_curr=`$gpu_inf | awk -F": " 'NR==16 {print $2}'`
fi

echo "${bold}GPU:${nobold}\t\t"$gpu_curr


# Current User Downloads Folder Size
fdrSize=`du -sh ~/Downloads | awk '{print $1}'`
[ "${fdrSize#${fdrSize%?}}" = "B" -o ${fdrSize%?} == "8.0" ] && dirSize="Empty" || dirSize="${fdrSize%?} ${fdrSize#${fdrSize%?}}b"
echo "${bold}DL's:${nobold}\t\t${dirSize}"


# Current User Trash Folder Size
fdrSize=`du -sh ~/.Trash | awk '{print $1}'`
[ "${fdrSize#${fdrSize%?}}" = "B" -o ${fdrSize%?} -lt "17" ] && dirSize="Empty" || dirSize="${fdrSize%?} ${fdrSize#${fdrSize%?}}b"
echo "${bold}Trash:${nobold}\t\t${dirSize}"


echo "  ⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯"
