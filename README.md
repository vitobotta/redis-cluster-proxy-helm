# redis-cluster-proxy-helm

A simple [Helm](https://helm.sh/) chart to deploy [Redis Cluster Proxy](https://github.com/RedisLabs/redis-cluster-proxy) in [Kubernetes](https://kubernetes.io/). To install:

```bash
kubectl create ns redis-cluster-proxy

helm upgrade --install \
  --namespace redis-cluster-proxy \
  --set cluster_address=<IP/hostname and port of the Redis cluster> \
  --set port=<port the proxy will be listening on, defaults to 7777>
  redis-cluster-proxy ./
```