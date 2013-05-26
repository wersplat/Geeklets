# Gizmodo Feed
# 
#!/bin/sh

URL="http://feeds.gawker.com/lifehacker/full"

if [ $# -eq 1 ] ; then
  headarg=$(( $1 * 2 ))
else
  headarg="-8"
fi

curl --silent "$URL" | grep -E '(title>)' | \
  sed -n '4,$p' | \
  sed -e 's/<title>//' -e 's/<\/title>//' | \
  sed -e 's/<!\[CDATA\[//g' |            
  sed -e 's/\]\]>//g' |         
  sed -e 's/<[^>]*>//g' |      
  head $headarg | sed G | fmt


