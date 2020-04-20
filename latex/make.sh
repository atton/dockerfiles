if [ ! -f Makefile ]; then
    echo 'Makefile missing. abort.'
    echo 'Usage: Please execute docker command with mount. like'
    echo '  $ docker run --rm -v /path/to/texfiles-with-makefile:/workdir latex'
    exit
fi

make
