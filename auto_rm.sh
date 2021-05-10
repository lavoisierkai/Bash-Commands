#!/bin/bash
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
echo "$SHELL_FOLDER"
DAYS_PERIOD=100
i=0
TWENTY_DAYS_AGO=$(date --date='20 days ago' +"%Y-%m-%d")
DAYS=10
echo '====File before' "$TWENTY_DAYS_AGO" 'days will be removed===='
while [ $i -lt $DAYS_PERIOD ]
	do
	FILE=$(date -d"$TWENTY_DAYS_AGO-$i days" +"%Y-%m-%d")
#	echo "$SHELL_FOLDER/$FILE"
	if [ -d $SHELL_FOLDER/$FILE ]
	then
#		echo "$SHELL_FOLDER/$FILE"
		rm -rf "$SHELL_FOLDER/$FILE"
		echo "success delet $SHELL_FOLDER/$FILE"
	fi
	i=$[$i+1]
done
echo '====Files have been removed===='  

