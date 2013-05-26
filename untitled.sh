#!/bin/sh

export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin

cd /path/to/desktop/images/earthobservatory/today

curl -A "Mozilla/4.0" -s http://earthobservatory.nasa.gov/Newsroom/NewImages/images.php3 -o /tmp/earthobservatory.html

URLS=`grep -B 2 -E '(full|True|natural)' /tmp/earthobservatory.html | grep -v http | grep href | sed s/\"/\ /g | awk '{ print "http://earthobservatory.nasa.gov", $3 }' | sed s/\ //`

if [[ -z $URLS ]]
then
	URLS=`grep -A 5 highres /tmp/earthobservatory.html | tr -d '\r' | tr -d '\n' | tr -d '"' | tr ' ' '\n' | grep -i href | sed -e s/=/\ / -e s/\>/\ / | awk '{ print "http://earthobservatory.nasa.gov", $2 }' | tr -d ' '`
fi

if [[ -n $URLS ]]
then
	mv *.??? ..

	for URL in "$URLS"
	do
		FILE=${PWD}/`echo $URL | sed sx/x\ xg | awk '{ print $6 }'`

		if [[ ! (-e $FILE) ]]
		then
			curl -s -O "$URL"
			cp *.jp*g ../originals/
			mogrify -resize 1680x1050\> *.jp*g
		fi
	done
	TITLE=`grep -A 3 '/Newsroom/Images/new_images_title_white.gif' /tmp/earthobservatory.html | grep '<b>' | sed -e s/'<b>'// -e s/'<\/b>'//`
	echo $TITLE >> /tmp/earthobservatory.title
fi