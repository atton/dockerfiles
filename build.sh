#!/bin/sh
cd `dirname $0`

buildopt='--compress --pull'

for name in `ls`; do
    if [ ! -d $name ]; then continue; fi
    if [ ! -f $name/Dockerfile ]; then continue; fi

    docker build $buildopt -t atton/$name $name
done
