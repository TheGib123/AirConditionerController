#!/bin/bash

lircd --device /dev/lirc0
irsend SEND_ONCE frigid KEY_POWER
#./a.sh

state=`cat state.txt`


if test $state == "On"
then
        state="Off"
else
        state="On"
fi
echo $state > state.txt



echo "Content-type: text/html"
echo ""

echo '<meta http-equiv="refresh" content="5; url=http://192.168.0.23/cgi-bin/ac/air.sh">'

echo '<head>'
echo '<title>AC Control</title>'
echo '<meta charset="utf-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1">'
echo '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">'
echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>'
echo '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>'
echo '</head>'



echo '<html>'
echo '<center><h1>Processing</h1></center>'
echo '</html>'

