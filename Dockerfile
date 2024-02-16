FROM alpine:3.18
RUN apk --update add postgresql-client \
    bash \
    && \
    rm -rf /var/cache/apk/*

RUN apk --no-cache update && \
    apk --no-cache add py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

USER 70
