FROM alpine/curl

COPY run.sh /run.sh

CMD ["sh", "/run.sh"]
