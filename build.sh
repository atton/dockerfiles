#!/bin/sh
cd `dirname $0`

docker build --rm -t atton/latex-make    latex-make
docker build --rm -t atton/webpage-title webpage-title
