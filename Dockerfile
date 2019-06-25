FROM alpine:3.7
RUN apk --update add postgresql-client \
    bash \
    && \
    rm -rf /var/cache/apk/*

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

ADD scripts /opt/scripts
# RUN chmod +x -R /opt/scripts

USER 70
