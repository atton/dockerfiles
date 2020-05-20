#!/bin/sh
cd `dirname $0`

docker build -t atton/latex-make    latex-make
docker build -t atton/webpage-title webpage-title
