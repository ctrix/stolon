## stolon-keeper



### Synopsis



```
stolon-keeper [flags]
```

### Options

```
      --can-be-master                   prevent keeper from being elected as master (default true)
      --can-be-synchronous-replica      prevent keeper from being chosen as synchronous replica (default true)
      --cluster-name string             cluster name
      --data-dir string                 data directory
      --disable-data-dir-locking        disable locking on data dir. Warning! It'll cause data corruptions if two keepers are concurrently running with the same data dir.
  -h, --help                            help for stolon-keeper
      --kube-resource-kind string       the k8s resource kind to be used to store stolon clusterdata and do sentinel leader election (only "configmap" is currently supported)
      --log-color                       enable color in log output (default if attached to a terminal)
      --log-level string                debug, info (default), warn or error (default "info")
      --metrics-listen-address string   metrics listen address i.e "0.0.0.0:8080" (disabled by default)
      --pg-advertise-address string     postgresql instance address from outside. Use it to expose ip different than local ip with a NAT networking config
      --pg-advertise-port string        postgresql instance port from outside. Use it to expose port different than local port with a PAT networking config
      --pg-bin-path string              absolute path to postgresql binaries. If empty they will be searched in the current PATH
      --pg-listen-address string        postgresql instance listening address, local address used for the postgres instance. For all network interface, you can set the value to '*'.
      --pg-port string                  postgresql instance listening port (default "5432")
      --pg-repl-auth-method string      postgres replication user auth method. Default is md5. (default "md5")
      --pg-repl-password string         postgres replication user password. Only one of --pg-repl-password or --pg-repl-passwordfile must be provided. Must be the same for all keepers.
      --pg-repl-passwordfile string     postgres replication user password file. Only one of --pg-repl-password or --pg-repl-passwordfile must be provided. Must be the same for all keepers.
      --pg-repl-username string         postgres replication user name. Required. It'll be created on db initialization. Must be the same for all keepers.
      --pg-su-auth-method string        postgres superuser auth method. Default is md5. (default "md5")
      --pg-su-password string           postgres superuser password. Only one of --pg-su-password or --pg-su-passwordfile must be provided. Must be the same for all keepers.
      --pg-su-passwordfile string       postgres superuser password file. Only one of --pg-su-password or --pg-su-passwordfile must be provided. Must be the same for all keepers)
      --pg-su-username string           postgres superuser user name. Used for keeper managed instance access and pg_rewind based synchronization. It'll be created on db initialization. Defaults to the name of the effective user running stolon-keeper. Must be the same for all keepers.
      --store-backend string            store backend type (etcdv2/etcd, etcdv3, consul or kubernetes)
      --store-ca-file string            verify certificates of HTTPS-enabled store servers using this CA bundle
      --store-cert-file string          certificate file for client identification to the store
      --store-endpoints string          a comma-delimited list of store endpoints (use https scheme for tls communication) (defaults: http://127.0.0.1:2379 for etcd, http://127.0.0.1:8500 for consul)
      --store-key string                private key file for client identification to the store
      --store-prefix string             the store base prefix (default "stolon/cluster")
      --store-skip-tls-verify           skip store certificate verification (insecure!!!)
      --store-timeout duration          store request timeout (default 5s)
      --uid string                      keeper uid (must be unique in the cluster and can contain only lower-case letters, numbers and the underscore character). If not provided a random uid will be generated.
```

###### Auto generated by spf13/cobra on 7-Mar-2025
