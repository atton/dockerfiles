#!/bin/sh
cd `dirname $0`

git show --name-only

if [ -n "$1" ]; then docker login -u atton -p $1; fi
for name in `ls`; do
    if [ ! -d $name ]; then continue; fi
    if [ ! -f $name/Dockerfile ]; then continue; fi

    tag="atton/$name"
    docker build --compress --pull -t $tag $name

    git diff-tree --no-commit-id --name-only -r master | grep "$name/" >/dev/null 2>&1
    if [ $? -eq 0 ]; then docker push $tag; fi
done
if [ -n "$1" ]; then docker logout; fi
