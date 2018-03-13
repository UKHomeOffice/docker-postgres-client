FROM alpine:3.7
RUN apk --update add postgresql-client bash && rm -rf /var/cache/apk/*
ENTRYPOINT [ '/bin/bash', '-c', 'trap : TERM INT; sleep infinity & wait' ]
