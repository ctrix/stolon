## stolon-sentinel



### Synopsis



```
stolon-sentinel [flags]
```

### Options

```
      --cluster-name string             cluster name
  -h, --help                            help for stolon-sentinel
      --initial-cluster-spec string     a file providing the initial cluster specification, used only at cluster initialization, ignored if cluster is already initialized
      --kube-resource-kind string       the k8s resource kind to be used to store stolon clusterdata and do sentinel leader election (only "configmap" is currently supported)
      --log-color                       enable color in log output (default if attached to a terminal)
      --log-level string                debug, info (default), warn or error (default "info")
      --metrics-listen-address string   metrics listen address i.e "0.0.0.0:8080" (disabled by default)
      --store-backend string            store backend type (etcdv2/etcd, etcdv3, consul or kubernetes)
      --store-ca-file string            verify certificates of HTTPS-enabled store servers using this CA bundle
      --store-cert-file string          certificate file for client identification to the store
      --store-endpoints string          a comma-delimited list of store endpoints (use https scheme for tls communication) (defaults: http://127.0.0.1:2379 for etcd, http://127.0.0.1:8500 for consul)
      --store-key string                private key file for client identification to the store
      --store-prefix string             the store base prefix (default "stolon/cluster")
      --store-skip-tls-verify           skip store certificate verification (insecure!!!)
      --store-timeout duration          store request timeout (default 5s)
```

###### Auto generated by spf13/cobra on 7-Mar-2025
