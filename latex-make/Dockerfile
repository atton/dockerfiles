FROM paperist/alpine-texlive-ja

RUN apk add make
ADD make.sh /root/make.sh

ENTRYPOINT ["sh", "/root/make.sh"]
