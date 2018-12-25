#!/bin/bash
state=`cat state.txt`
buttonName=""
if test $state == "On"
then
	buttonName="Off"
else 
	buttonName="On"
fi


echo "Content-type: text/html"
echo ""


echo '<head>'
echo '<title>AC Control</title>'
echo '<meta charset="utf-8">'
echo '<meta name="viewport" content="width=device-width, initial-scale=1">'
echo '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">'
echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>'
echo '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>'
echo '</head>'



echo '<html>'
echo "<center><h1>AC is $state</h1></center>"
#echo "<a href='script.sh'>$buttonName</a>"
echo "<center><a href='script.sh'><button type='button' class='btn btn-primary btn-lg'>Turn $buttonName</button></a></center>"
echo '</html>'

