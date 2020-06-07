FROM alpine:3.12.0

ENV CLUSTER_ADDRESS=127.0.0.1:6379
ENV PORT=7777

RUN apk add --update-cache wget build-base git linux-headers \
  && rm -rf /var/cache/apk/*

RUN wget https://github.com/RedisLabs/redis-cluster-proxy/archive/1.0-beta2.tar.gz \
 && tar xvfz 1.0-beta2.tar.gz \
 && cd redis-cluster-proxy-1.0-beta2 \
 && make \
 && make install

COPY start-proxy.sh /usr/local/bin/start-proxy.sh

EXPOSE $PORT

CMD ["start-proxy.sh"]

