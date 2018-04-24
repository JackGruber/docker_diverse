#!/bin/sh

while read IN
do
    npm install $IN --production --prefix $IOBROKERDIR
    if [ $? -eq 0 ]
    then
        echo "DONE $IN"
    else
        echo "FAIL $IN"
    fi

done < "/opt/scripts/adapters2install.txt"
rm "/opt/scripts/adapters2install.txt"
