#!/bin/sh
cd `dirname $0`

if [ $# -eq 0 ]; then
    echo 'Please input URL. like'
    echo "  $ docker run --rm atton/webpage-title 'https://atton.github.io'"
    exit
fi

echo 'document.title' | chromium-browser --quiet --headless --no-sandbox --disable-gpu --disable-bus --repl ${1} 2>&1 | grep result | sed -e 's/^>>> //' | jq '.["result"]["value"]' | sed -e 's/^"//' | sed -e 's/"$//'
