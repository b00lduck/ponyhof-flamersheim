#!/bin/bash

# check if target host is set
if [ -z "$1" ]; then
    echo "Please enter the target host (user@host):"
    read TARGETHOST
fi

../hugo/bin/spf13 -d public
cd public
scp -r * $TARGETHOST:/mnt/docker/ponyhof

cd $OLDPWD