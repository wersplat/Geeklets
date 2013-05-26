#!/bin/sh
URL="http://www.nytimes.com/services/xml/rss/nyt/GlobalHome.xml"

if [ $# -eq 1 ] ; then
  headarg=$(( $1))
else
  headarg="-1"
fi

curl --silent "$URL" | grep -E '(title>)' | \
  sed -n '3,$p' | \
  sed -e 's/<title>//' -e 's/<\/title>//' | \
  sed -e 's/<!\[CDATA\[//g' |            
  sed -e 's/\]\]>//g' |         
  sed -e 's/<[^>]*>//g' |      
  head $headarg | sed G | fmt