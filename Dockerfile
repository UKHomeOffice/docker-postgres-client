FROM alpine:3.7
RUN apk --update add postgresql-client \
    bash \
    && \
    rm -rf /var/cache/apk/*
USER 70
