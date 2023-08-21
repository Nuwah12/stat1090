#!/bin/bash

##########
# Simply poll the dump1090 webserver for aircraft json data
# This is a test script
# run ./dump1090 --net 
##########

if [[ -z $1 ]]; then
    echo "Pass in localhost and port"
    exit 1
fi

#TMP="./tmp"
#mkdir -p ${TMP}

while true; do
    wget --no-parent -A json -nH -np "${1}/data.json"
    cat data.json
    sleep 10
    rm data.json
done
