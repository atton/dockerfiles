#!/bin/sh
cd `dirname $0`

docker build -t latex latex
docker build -t atton/webpage-title webpage-title
