FROM alpine

RUN apk add --no-cache \
        bash \
        httpie \
        jq && \
        which bash && \
        whcih http && \
        which jq
        
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
