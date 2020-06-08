#!/bin/sh
cd `dirname $0`

buildopt='--compress --pull'

if [ -n "$1" ]; then docker login -u atton -p $1; fi
for name in `ls`; do
    if [ ! -d $name ]; then continue; fi
    if [ ! -f $name/Dockerfile ]; then continue; fi

    docker build $buildopt -t atton/$name $name
done
if [ -n "$1" ]; then docker logout; fi
