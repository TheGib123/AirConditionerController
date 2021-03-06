 
hour=`date "+%H"`
day=`date "+%a"`

execute () {
        sudo lircd --device /dev/lirc0
        sudo irsend SEND_ONCE frigid KEY_POWER
        echo -e "\nair tuned on\n" >> autoAClog.txt
        date >> autoAClog.txt
	sleep 1h
}

check_hour () {
        if test $hour -eq 16 -a "$day" == "Fri"
        then
                echo -e "friday execute\n" >> autoAClog.txt
                execute
        elif test $hour -eq 16
        then
                echo -e "normal execute\n" >> autoAClog.txt
                execute
        else
                echo -e "no execute\n" >> autoAClog.txt
        fi
}

start () {
        if test "$day" == "Mon"
        then
                echo "Mon" >> autoAClog.txt
                check_hour
        elif  test "$day" == "Tue"
        then
                echo "Tue" >> autoAClog.txt
                check_hour
        elif  test "$day" == "Wed"
        then
                echo "Wed" >> autoAClog.txt
                check_hour
        elif  test "$day" == "Thu"
        then
                echo "Thu" >> autoAClog.txt
                check_hour
        elif  test "$day" == "Fri"
        then
                echo "Fri" >> autoAClog.txt
                check_hour
        else
                echo "weekend" >> autoAClog.txt
        fi
}



while  true
do
        hour=`date "+%H"`
	day=`date "+%a"`
	echo "loop day:$day hour:$hour" >> autoAClog.txt
        start
        sleep 5m
done
