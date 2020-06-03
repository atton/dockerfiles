if [ ! -f Makefile ]; then
    echo 'Makefile missing. abort.'
    echo 'Usage: Please execute docker command with mount. like'
    echo '  $ docker run --rm -v /path/to/texfiles-with-makefile:/workdir atton/latex-make'
    exit
fi

# UTC to JST
export SOURCE_DATE_EPOCH=`echo "($(date +'%s') + 9 * 60 * 60)" | bc`
make
