#!/bin/sh
cd `dirname $0`

docker build -t latex latex
docker build -t webpage-title webpage-title
