FROM alpine

RUN apk add chromium jq
ADD get-title.sh /root/get-title.sh

ENTRYPOINT ["sh", "/root/get-title.sh"]
