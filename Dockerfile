FROM alpine

RUN apk add --no-cache \
        bash \
        httpie \
        jq && \
        which bash && \
        which http && \
        which jq
        
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
