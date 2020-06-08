#!/bin/sh
cd `dirname $0`

buildopt='--compress --pull'

if [ -n "$1" ]; then docker login -u atton -p $1; fi
for name in `ls`; do
    if [ ! -d $name ]; then continue; fi
    if [ ! -f $name/Dockerfile ]; then continue; fi

    tag="atton/$name"
    docker build $buildopt -t $tag $name

    git diff-tree --no-commit-id --name-only -r HEAD | grep $name/ >/dev/null 2>&1
    if [ $? -eq 0 ]; then docker push $tag; fi
done
if [ -n "$1" ]; then docker logout; fi
