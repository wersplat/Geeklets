#!/bin/sh
# Not my code I take no credit, I just made some small changes.
# I'm not sure who the original author is so sorry for no mention.
# Images are random images from the internet, I take no credit for those either.
# don't like the above statement, then don't use it. Simple.

SIGNAL=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/agrCtlRSSI:/ {print $2}' | sed -e 's/\-/ /'`
SSID=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I | awk -F: '/ SSID: / {print $2}' | sed -e 's/.*SSID: //'`
CH=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/channel:/ {print $2}'`
WAN=`curl --silent http://checkip.dyndns.org | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}'`
LAN=`ifconfig en0 | grep "inet" | grep -v 127.0.0.1 | grep -v inet6 | awk '{print $2}'`
VPN=`ifconfig utun1 | grep "inet" | grep -v 127.0.0.1 | grep -v inet6 | awk '{print $2}'`

color_red=`echo "33[0;31m"`

typeset -i b=5

if [ "$SSID" ] ; then
    echo "SSID: $SSID"
    echo "Channel: $CH"
    else
    echo "AirPort: OFF"
fi

echo "Signal Strength:\t\t\c"

if [ ${#SIGNAL} = 0 ]
then
	echo "Disconnected\c"
else

	if [ $SIGNAL -lt 11 ]
	then
		echo "\033[1;31m\c"
	else
		echo "\033[0m\c"
	fi

	while [ $b -le $SIGNAL ]
	do
		echo "|\c"
		b=`expr $b + 5`
	done

	while [ $b -le 100 ]
	do
		echo "\033[1;37m|\033[0m\c"
		b=`expr $b + 5`
	done

	echo "\033[0m $SIGNAL%\c"

	unset SIGNAL
	unset b

fi


if [ "$LAN" ] ; then
    echo "\nLAN IP Address: $LAN"
    else
        echo "LAN IP Address: NO CONNECTION"
        fi

        if [ "$WAN" ] ; then
            echo "EXT IP Address: $WAN"
            else
                echo "EXT IP Address: NO INTERNET CONNECTION"
                fi

                if [ "$VPN" ] ; then
                    echo "VPN IP Address: $VPN"
                    else
                        echo "VPN IP Address: NOT CONNECTED"
                        fi
