FROM paperist/alpine-texlive-ja

RUN apk add --no-cache make tzdata
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && echo "Asia/Tokyo" > /etc/timezone
RUN wget http://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh && sh update-tlmgr-latest.sh -- --upgrade && rm update-tlmgr-latest.sh
RUN tlmgr install tracklang

ADD make.sh /root/make.sh
ENTRYPOINT ["sh", "/root/make.sh"]
