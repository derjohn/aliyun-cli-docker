FROM alpine

LABEL maintainer derjohn <himself@derjohn.de>

RUN apk --update add git less openssh curl wget libc6-compat && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY ./aliyun.tgz /tmp/aliyun.tgz
RUN cd /usr/local/bin; tar xzf /tmp/aliyun.tgz
RUN chmod +x /usr/local/bin/aliyun

VOLUME ["~/.aliyun/"]

ENTRYPOINT ["/usr/local/bin/aliyun"]
CMD ["--help"]

