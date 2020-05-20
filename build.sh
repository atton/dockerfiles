#!/bin/sh
cd `dirname $0`

docker build -t atton/latex-make    latex
docker build -t atton/webpage-title webpage-title
