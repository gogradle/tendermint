# Tendermint

This is a demonstration for building Tendermint with [Gogradle](https://github.com/blindpirate/gogradle).

`Go` or `GOPATH` is not required.


Just install JDK and create `build.gradle` with following contents:

```
plugins {
    id 'com.github.blindpirate.gogradle' version '0.4.0'
}

golang {
    packagePath = 'github.com/tendermint/tendermint'
}

build {
    doLast {
        go 'build -o ./${GOOS}_${GOARCH}_${PROJECT_NAME}${GOEXE} github.com/tendermint/tendermint/cmd/tendermint'
    }
}
```

# Build

run `./gradlew build` on POSIX or `gradlew build` on Windows.


# Test

run `./gradlew test` on POSIX or `gradlew test` on Windows.

# Coverage 

run `./gradlew cover` on POSIX or `gradlew cover` on Windows.

# Dependencies

run `./gradlew dependencies` on POSIX or `gradlew dependencies` on Windows.

```
build:
github.com/tendermint/tendermint
├── github.com/BurntSushi/toml:9906417 √
├── github.com/btcsuite/btcd:d06c0bb √
│   ├── github.com/btcsuite/btclog:73889fb √
│   │   └── github.com/btcsuite/seelog:313961b √
│   ├── github.com/btcsuite/btcrpcclient:abcdfb7 √
│   │   ├── github.com/btcsuite/btcd:4b348c1 -> d06c0bb (*)
│   │   ├── github.com/btcsuite/btclog:73889fb √ (*)
│   │   ├── github.com/btcsuite/btcutil:86346b5 √
│   │   │   ├── github.com/btcsuite/btcd:4b348c1 -> d06c0bb (*)
│   │   │   └── github.com/btcsuite/golangcrypto:53f62d9 √
│   │   ├── github.com/btcsuite/go-socks:4720035 √
│   │   ├── github.com/btcsuite/websocket:31079b6 √
│   │   └── github.com/davecgh/go-spew:346938d -> 6d21280
│   ├── github.com/btcsuite/btcutil:86346b5 √ (*)
│   ├── github.com/btcsuite/go-socks:4720035 √ (*)
│   ├── github.com/btcsuite/golangcrypto:53f62d9 √ (*)
│   ├── github.com/btcsuite/goleveldb:7834afc √
│   │   ├── github.com/btcsuite/snappy-go:0bdef8d √
│   │   ├── github.com/onsi/ginkgo:77a8c1e √
│   │   └── github.com/onsi/gomega:334b8f4 √
│   │       ├── github.com/golang/protobuf:2bba060 -> 8ee7999
│   │       │   └── google.golang.org/genproto:411e09b √
│   │       │       ├── github.com/golang/protobuf:2bba060 -> 8ee7999 (*)
│   │       │       ├── golang.org/x/net:ffcf1be -> 61557ac
│   │       │       │   └── golang.org/x/crypto:c78caca -> 7c6cc32
│   │       │       │       └── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │       └── google.golang.org/grpc:f45e6e3 -> cbcceb2
│   │       │           ├── github.com/golang/glog:23def4e √
│   │       │           ├── github.com/golang/mock:bd3c8e8 √
│   │       │           ├── github.com/golang/protobuf:2bba060 -> 8ee7999 (*)
│   │       │           ├── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │           └── golang.org/x/oauth2:7fdf099 √
│   │       │               ├── cloud.google.com/go:3adefae √
│   │       │               │   ├── github.com/golang/geo:f819552 √
│   │       │               │   ├── github.com/golang/glog:23def4e √ (*)
│   │       │               │   ├── github.com/golang/protobuf:2bba060 -> 8ee7999 (*)
│   │       │               │   ├── github.com/googleapis/gax-go:9af46dd √
│   │       │               │   │   ├── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │               │   │   └── google.golang.org/grpc:f45e6e3 -> cbcceb2 (*)
│   │       │               │   ├── golang.org/x/debug:fb50892 √
│   │       │               │   ├── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │               │   ├── golang.org/x/oauth2:7fdf099 √ (*)
│   │       │               │   ├── golang.org/x/sync:5a06fca √
│   │       │               │   │   └── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │               │   ├── golang.org/x/text:f4b4367 √
│   │       │               │   │   └── golang.org/x/tools:37a1062 √
│   │       │               │   │       └── golang.org/x/crypto:c78caca -> 7c6cc32 (*)
│   │       │               │   ├── golang.org/x/time:f51c127 √
│   │       │               │   │   └── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │               │   ├── google.golang.org/api:48e49d1 √
│   │       │               │   │   ├── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │               │   │   ├── golang.org/x/oauth2:7fdf099 √ (*)
│   │       │               │   │   ├── golang.org/x/sync:5a06fca √ (*)
│   │       │               │   │   └── google.golang.org/grpc:f45e6e3 -> cbcceb2 (*)
│   │       │               │   ├── google.golang.org/appengine:56d253d √
│   │       │               │   │   ├── github.com/golang/protobuf:2bba060 -> 8ee7999 (*)
│   │       │               │   │   └── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       │               │   ├── google.golang.org/genproto:411e09b √ (*)
│   │       │               │   └── google.golang.org/grpc:f45e6e3 -> cbcceb2 (*)
│   │       │               └── golang.org/x/net:ffcf1be -> 61557ac (*)
│   │       └── gopkg.in/yaml.v2:a3f3340 √
│   ├── github.com/btcsuite/seelog:313961b √ (*)
│   ├── github.com/btcsuite/snappy-go:0bdef8d √ (*)
│   ├── github.com/btcsuite/websocket:31079b6 √ (*)
│   ├── github.com/btcsuite/winsvc:f8fb11f √
│   ├── github.com/davecgh/go-spew:346938d -> 6d21280 (*)
│   └── github.com/jessevdk/go-flags:1679536 √
├── github.com/davecgh/go-spew:6d21280 √ (*)
├── github.com/ebuchman/fail-test:13f91f1 √
├── github.com/go-stack/stack:100eb0c √
├── github.com/gogo/protobuf:909568b √
├── github.com/golang/protobuf:8ee7999 √ (*)
├── github.com/golang/snappy:d9eb7a3 √
├── github.com/gorilla/websocket:3ab3a8b √
├── github.com/jmhodges/levigo:c42d9e0 √
├── github.com/mattn/go-colorable:d228849 √
│   └── github.com/mattn/go-isatty:fc9e8d8 -> 30a891c
├── github.com/mattn/go-isatty:30a891c √ (*)
├── github.com/pkg/errors:645ef00 √
├── github.com/pmezard/go-difflib:d8ed262 √
├── github.com/spf13/pflag:9ff6c69 √
├── github.com/stretchr/testify:69483b4 √
│   ├── github.com/davecgh/go-spew:github.com/stretchr/testify#69483b4/vendor/github.com/davecgh/go-spew -> 6d21280 (*)
│   ├── github.com/pmezard/go-difflib:github.com/stretchr/testify#69483b4/vendor/github.com/pmezard/go-difflib -> d8ed262 (*)
│   └── github.com/stretchr/objx:github.com/stretchr/testify#69483b4/vendor/github.com/stretchr/objx √
├── github.com/syndtr/goleveldb:23851d9 √
│   ├── github.com/golang/snappy:553a641 -> d9eb7a3 (*)
│   ├── github.com/onsi/ginkgo:77a8c1e √ (*)
│   └── github.com/onsi/gomega:334b8f4 √ (*)
├── github.com/tendermint/abci:1236e8f √
│   ├── github.com/btcsuite/btcd:d06c0bb √ (*)
│   ├── github.com/go-stack/stack:100eb0c √ (*)
│   ├── github.com/golang/protobuf:8ee7999 √ (*)
│   ├── github.com/golang/snappy:7db9049 -> d9eb7a3 (*)
│   ├── github.com/jmhodges/levigo:c42d9e0 √ (*)
│   ├── github.com/mattn/go-colorable:5411d3e -> d228849 (*)
│   ├── github.com/mattn/go-isatty:281032e -> 30a891c (*)
│   ├── github.com/stretchr/testify:69483b4 √ (*)
│   ├── github.com/syndtr/goleveldb:23851d9 √ (*)
│   ├── github.com/tendermint/ed25519:1f52c6f √
│   ├── github.com/tendermint/go-common:339e135 -> dcb015d
│   │   └── github.com/tendermint/log15:ae0f3d6 √
│   │       ├── github.com/go-stack/stack:100eb0c √ (*)
│   │       └── github.com/mattn/go-colorable:ded68f7 -> d228849 (*)
│   ├── github.com/tendermint/go-crypto:4b11d62 -> 3f47cfa
│   │   ├── github.com/btcsuite/btcd:4b348c1 -> d06c0bb (*)
│   │   ├── github.com/tendermint/ed25519:1f52c6f √ (*)
│   │   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   │   ├── github.com/tendermint/go-data:c955b19 -> 3227114
│   │   │   ├── github.com/pkg/errors:ff09b13 -> 645ef00 (*)
│   │   │   └── github.com/tendermint/go-wire:f530b7a √
│   │   │       ├── github.com/tendermint/go-common:dcb015d √ (*)
│   │   │       ├── github.com/tendermint/go-logger:cefb3a4 √
│   │   │       │   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   │   │       │   └── github.com/tendermint/log15:ae0f3d6 √ (*)
│   │   │       └── golang.org/x/crypto:c78caca -> 7c6cc32 (*)
│   │   ├── github.com/tendermint/go-wire:f530b7a √ (*)
│   │   └── golang.org/x/crypto:c78caca -> 7c6cc32 (*)
│   ├── github.com/tendermint/go-db:72f6dac -> eac3f2b
│   │   ├── github.com/syndtr/goleveldb:3c5717c -> 23851d9 (*)
│   │   └── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   ├── github.com/tendermint/go-merkle:9f20e80 -> 714d4d0
│   │   ├── github.com/alecthomas/template:a0175ee √
│   │   ├── github.com/alecthomas/units:2efee85 √
│   │   ├── github.com/go-stack/stack:100eb0c √ (*)
│   │   ├── github.com/golang/snappy:d9eb7a3 √ (*)
│   │   ├── github.com/jmhodges/levigo:c42d9e0 √ (*)
│   │   ├── github.com/mattn/go-colorable:d228849 √ (*)
│   │   ├── github.com/mattn/go-isatty:30a891c √ (*)
│   │   ├── github.com/stretchr/testify:69483b4 √ (*)
│   │   ├── github.com/syndtr/goleveldb:23851d9 √ (*)
│   │   ├── github.com/tendermint/go-common:70e694e -> dcb015d (*)
│   │   ├── github.com/tendermint/go-db:2645626 -> eac3f2b (*)
│   │   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   │   ├── github.com/tendermint/go-wire:2f3b7aa -> f530b7a (*)
│   │   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   │   ├── golang.org/x/crypto:7c6cc32 √ (*)
│   │   ├── golang.org/x/sys:d75a526 √
│   │   └── gopkg.in/alecthomas/kingpin.v2:e9044be √
│   │       ├── github.com/alecthomas/template:a0175ee √ (*)
│   │       └── github.com/alecthomas/units:2efee85 √ (*)
│   ├── github.com/tendermint/go-process:b27edfd √
│   │   └── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-wire:3216ec9 -> f530b7a (*)
│   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   ├── github.com/urfave/cli:347a988 √
│   │   ├── github.com/BurntSushi/toml:b26d9c3 -> 9906417 (*)
│   │   ├── gopkg.in/urfave/cli.v1:0bdedde √
│   │   │   ├── github.com/BurntSushi/toml:b26d9c3 -> 9906417 (*)
│   │   │   └── gopkg.in/yaml.v2:a3f3340 √ (*)
│   │   └── gopkg.in/yaml.v2:a3f3340 √ (*)
│   ├── golang.org/x/crypto:453249f -> 7c6cc32 (*)
│   ├── golang.org/x/net:61557ac √ (*)
│   ├── golang.org/x/sys:e24f485 -> d75a526 (*)
│   └── google.golang.org/grpc:cbcceb2 √ (*)
├── github.com/tendermint/ed25519:1f52c6f √ (*)
├── github.com/tendermint/go-autofile:48b17de √
│   └── github.com/tendermint/go-common:dcb015d √ (*)
├── github.com/tendermint/go-clist:3baa390 √
├── github.com/tendermint/go-common:dcb015d √ (*)
├── github.com/tendermint/go-config:620dcbb √
│   ├── github.com/BurntSushi/toml:b26d9c3 -> 9906417 (*)
│   └── github.com/tendermint/go-common:dcb015d √ (*)
├── github.com/tendermint/go-crypto:3f47cfa √ (*)
├── github.com/tendermint/go-data:3227114 √ (*)
├── github.com/tendermint/go-db:eac3f2b √ (*)
├── github.com/tendermint/go-events:f8ffbfb √
│   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   └── github.com/tendermint/go-logger:cefb3a4 √ (*)
├── github.com/tendermint/go-flowrate:a20c98e √
├── github.com/tendermint/go-logger:cefb3a4 √ (*)
├── github.com/tendermint/go-merkle:714d4d0 √ (*)
├── github.com/tendermint/go-p2p:97a5ed2 √
│   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-config:620dcbb √ (*)
│   ├── github.com/tendermint/go-crypto:3f47cfa √ (*)
│   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   ├── github.com/tendermint/go-wire:f530b7a √ (*)
│   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   └── golang.org/x/crypto:c78caca -> 7c6cc32 (*)
├── github.com/tendermint/go-rpc:fcea0cd √
│   ├── github.com/gorilla/websocket:a91eba7 -> 3ab3a8b (*)
│   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-events:f8ffbfb √ (*)
│   ├── github.com/tendermint/go-wire:f530b7a √ (*)
│   └── github.com/tendermint/log15:ae0f3d6 √ (*)
├── github.com/tendermint/go-wire:f530b7a √ (*)
├── github.com/tendermint/log15:ae0f3d6 √ (*)
├── github.com/tendermint/merkleeyes:9fb76ef √
│   ├── github.com/go-stack/stack:100eb0c √ (*)
│   ├── github.com/golang/protobuf:8ee7999 √ (*)
│   ├── github.com/golang/snappy:d9eb7a3 √ (*)
│   ├── github.com/jmhodges/levigo:c42d9e0 √ (*)
│   ├── github.com/mattn/go-colorable:d228849 √ (*)
│   ├── github.com/mattn/go-isatty:30a891c √ (*)
│   ├── github.com/stretchr/testify:69483b4 √ (*)
│   ├── github.com/syndtr/goleveldb:23851d9 √ (*)
│   ├── github.com/tendermint/abci:1236e8f √ (*)
│   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-db:eac3f2b √ (*)
│   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   ├── github.com/tendermint/go-merkle:714d4d0 √ (*)
│   ├── github.com/tendermint/go-wire:f530b7a √ (*)
│   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   ├── github.com/urfave/cli:0bdedde -> 347a988 (*)
│   ├── golang.org/x/crypto:7c6cc32 √ (*)
│   ├── golang.org/x/net:61557ac √ (*)
│   ├── golang.org/x/sys:d75a526 √ (*)
│   └── google.golang.org/grpc:cbcceb2 √ (*)
├── golang.org/x/crypto:7c6cc32 √ (*)
├── golang.org/x/net:61557ac √ (*)
├── golang.org/x/sys:d75a526 √ (*)
└── google.golang.org/grpc:cbcceb2 √ (*)

test:
github.com/tendermint/tendermint
├── github.com/pkg/errors:ff09b13 √
├── github.com/stretchr/testify:4d4bfba √
│   ├── github.com/davecgh/go-spew:github.com/stretchr/testify#4d4bfba/vendor/github.com/davecgh/go-spew -> 346938d
│   ├── github.com/pmezard/go-difflib:github.com/stretchr/testify#4d4bfba/vendor/github.com/pmezard/go-difflib √
│   └── github.com/stretchr/objx:github.com/stretchr/testify#4d4bfba/vendor/github.com/stretchr/objx √
├── github.com/tendermint/abci:af792ea √
│   ├── github.com/btcsuite/btcd:d06c0bb -> 4b348c1
│   │   ├── github.com/btcsuite/btclog:73889fb √
│   │   │   └── github.com/btcsuite/seelog:313961b √
│   │   ├── github.com/btcsuite/btcrpcclient:abcdfb7 √
│   │   │   ├── github.com/btcsuite/btcd:4b348c1 √ (*)
│   │   │   ├── github.com/btcsuite/btclog:73889fb √ (*)
│   │   │   ├── github.com/btcsuite/btcutil:86346b5 √
│   │   │   │   ├── github.com/btcsuite/btcd:4b348c1 √ (*)
│   │   │   │   └── github.com/btcsuite/golangcrypto:53f62d9 √
│   │   │   ├── github.com/btcsuite/go-socks:4720035 √
│   │   │   ├── github.com/btcsuite/websocket:31079b6 √
│   │   │   └── github.com/davecgh/go-spew:346938d √ (*)
│   │   ├── github.com/btcsuite/btcutil:86346b5 √ (*)
│   │   ├── github.com/btcsuite/go-socks:4720035 √ (*)
│   │   ├── github.com/btcsuite/golangcrypto:53f62d9 √ (*)
│   │   ├── github.com/btcsuite/goleveldb:7834afc √
│   │   │   ├── github.com/btcsuite/snappy-go:0bdef8d √
│   │   │   ├── github.com/onsi/ginkgo:77a8c1e √
│   │   │   └── github.com/onsi/gomega:334b8f4 √
│   │   │       ├── github.com/golang/protobuf:2bba060 √
│   │   │       └── gopkg.in/yaml.v2:a3f3340 √
│   │   ├── github.com/btcsuite/seelog:313961b √ (*)
│   │   ├── github.com/btcsuite/snappy-go:0bdef8d √ (*)
│   │   ├── github.com/btcsuite/websocket:31079b6 √ (*)
│   │   ├── github.com/btcsuite/winsvc:f8fb11f √
│   │   ├── github.com/davecgh/go-spew:346938d √ (*)
│   │   └── github.com/jessevdk/go-flags:1679536 √
│   ├── github.com/go-stack/stack:100eb0c √
│   ├── github.com/golang/protobuf:8ee7999 -> 2bba060 (*)
│   ├── github.com/golang/snappy:7db9049 -> 553a641
│   ├── github.com/jmhodges/levigo:c42d9e0 √
│   ├── github.com/mattn/go-colorable:5411d3e -> ded68f7
│   ├── github.com/mattn/go-isatty:281032e -> fc9e8d8
│   ├── github.com/stretchr/testify:69483b4 -> 4d4bfba (*)
│   ├── github.com/syndtr/goleveldb:23851d9 -> 3c5717c
│   │   ├── github.com/golang/snappy:553a641 √ (*)
│   │   ├── github.com/onsi/ginkgo:77a8c1e √ (*)
│   │   └── github.com/onsi/gomega:334b8f4 √ (*)
│   ├── github.com/tendermint/ed25519:1f52c6f √
│   ├── github.com/tendermint/go-common:339e135 -> dcb015d
│   │   └── github.com/tendermint/log15:ae0f3d6 √
│   │       ├── github.com/go-stack/stack:100eb0c √ (*)
│   │       └── github.com/mattn/go-colorable:ded68f7 √ (*)
│   ├── github.com/tendermint/go-crypto:4b11d62 -> 3f47cfa
│   │   ├── github.com/btcsuite/btcd:4b348c1 √ (*)
│   │   ├── github.com/tendermint/ed25519:1f52c6f √ (*)
│   │   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   │   ├── github.com/tendermint/go-data:c955b19 √
│   │   │   ├── github.com/pkg/errors:ff09b13 √ (*)
│   │   │   └── github.com/tendermint/go-wire:f530b7a √
│   │   │       ├── github.com/tendermint/go-common:dcb015d √ (*)
│   │   │       ├── github.com/tendermint/go-logger:cefb3a4 √
│   │   │       │   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   │   │       │   └── github.com/tendermint/log15:ae0f3d6 √ (*)
│   │   │       └── golang.org/x/crypto:c78caca √
│   │   │           └── golang.org/x/net:ffcf1be √
│   │   │               └── golang.org/x/crypto:c78caca √ (*)
│   │   ├── github.com/tendermint/go-wire:f530b7a √ (*)
│   │   └── golang.org/x/crypto:c78caca √ (*)
│   ├── github.com/tendermint/go-db:72f6dac -> eac3f2b
│   │   ├── github.com/syndtr/goleveldb:3c5717c √ (*)
│   │   └── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   ├── github.com/tendermint/go-merkle:9f20e80 -> 714d4d0
│   │   ├── github.com/alecthomas/template:a0175ee √
│   │   ├── github.com/alecthomas/units:2efee85 √
│   │   ├── github.com/go-stack/stack:100eb0c √ (*)
│   │   ├── github.com/golang/snappy:d9eb7a3 -> 553a641 (*)
│   │   ├── github.com/jmhodges/levigo:c42d9e0 √ (*)
│   │   ├── github.com/mattn/go-colorable:d228849 -> ded68f7 (*)
│   │   ├── github.com/mattn/go-isatty:30a891c -> fc9e8d8 (*)
│   │   ├── github.com/stretchr/testify:69483b4 -> 4d4bfba (*)
│   │   ├── github.com/syndtr/goleveldb:23851d9 -> 3c5717c (*)
│   │   ├── github.com/tendermint/go-common:70e694e -> dcb015d (*)
│   │   ├── github.com/tendermint/go-db:2645626 -> eac3f2b (*)
│   │   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   │   ├── github.com/tendermint/go-wire:2f3b7aa -> f530b7a (*)
│   │   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   │   ├── golang.org/x/crypto:7c6cc32 -> c78caca (*)
│   │   ├── golang.org/x/sys:d75a526 -> e24f485
│   │   └── gopkg.in/alecthomas/kingpin.v2:e9044be √
│   │       ├── github.com/alecthomas/template:a0175ee √ (*)
│   │       └── github.com/alecthomas/units:2efee85 √ (*)
│   ├── github.com/tendermint/go-process:b27edfd √
│   │   └── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-wire:3216ec9 -> f530b7a (*)
│   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   ├── github.com/urfave/cli:347a988 √
│   │   ├── github.com/BurntSushi/toml:b26d9c3 √
│   │   ├── gopkg.in/urfave/cli.v1:0bdedde √
│   │   │   ├── github.com/BurntSushi/toml:b26d9c3 √ (*)
│   │   │   └── gopkg.in/yaml.v2:a3f3340 √ (*)
│   │   └── gopkg.in/yaml.v2:a3f3340 √ (*)
│   ├── golang.org/x/crypto:453249f -> c78caca (*)
│   ├── golang.org/x/net:61557ac -> ffcf1be (*)
│   ├── golang.org/x/sys:e24f485 √ (*)
│   └── google.golang.org/grpc:cbcceb2 -> f45e6e3
│       ├── github.com/golang/glog:23def4e √
│       ├── github.com/golang/mock:bd3c8e8 √
│       ├── github.com/golang/protobuf:2bba060 √ (*)
│       ├── golang.org/x/net:ffcf1be √ (*)
│       └── golang.org/x/oauth2:7fdf099 √
│           ├── cloud.google.com/go:3adefae √
│           │   ├── github.com/golang/geo:f819552 √
│           │   ├── github.com/golang/glog:23def4e √ (*)
│           │   ├── github.com/golang/protobuf:2bba060 √ (*)
│           │   ├── github.com/googleapis/gax-go:9af46dd √
│           │   │   ├── golang.org/x/net:ffcf1be √ (*)
│           │   │   └── google.golang.org/grpc:f45e6e3 √ (*)
│           │   ├── golang.org/x/debug:fb50892 √
│           │   ├── golang.org/x/net:ffcf1be √ (*)
│           │   ├── golang.org/x/oauth2:7fdf099 √ (*)
│           │   ├── golang.org/x/sync:5a06fca √
│           │   │   └── golang.org/x/net:ffcf1be √ (*)
│           │   ├── golang.org/x/text:f4b4367 √
│           │   │   └── golang.org/x/tools:37a1062 √
│           │   │       └── golang.org/x/crypto:c78caca √ (*)
│           │   ├── golang.org/x/time:f51c127 √
│           │   │   └── golang.org/x/net:ffcf1be √ (*)
│           │   ├── google.golang.org/api:48e49d1 √
│           │   │   ├── golang.org/x/net:ffcf1be √ (*)
│           │   │   ├── golang.org/x/oauth2:7fdf099 √ (*)
│           │   │   ├── golang.org/x/sync:5a06fca √ (*)
│           │   │   └── google.golang.org/grpc:f45e6e3 √ (*)
│           │   ├── google.golang.org/appengine:56d253d √
│           │   │   ├── github.com/golang/protobuf:2bba060 √ (*)
│           │   │   └── golang.org/x/net:ffcf1be √ (*)
│           │   ├── google.golang.org/genproto:411e09b √
│           │   │   ├── github.com/golang/protobuf:2bba060 √ (*)
│           │   │   ├── golang.org/x/net:ffcf1be √ (*)
│           │   │   └── google.golang.org/grpc:f45e6e3 √ (*)
│           │   └── google.golang.org/grpc:f45e6e3 √ (*)
│           └── golang.org/x/net:ffcf1be √ (*)
├── github.com/tendermint/go-common:dcb015d √ (*)
├── github.com/tendermint/go-config:620dcbb √
│   ├── github.com/BurntSushi/toml:b26d9c3 √ (*)
│   └── github.com/tendermint/go-common:dcb015d √ (*)
├── github.com/tendermint/go-crypto:3f47cfa √ (*)
├── github.com/tendermint/go-db:eac3f2b √ (*)
├── github.com/tendermint/go-events:f8ffbfb √
│   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   └── github.com/tendermint/go-logger:cefb3a4 √ (*)
├── github.com/tendermint/go-merkle:714d4d0 √ (*)
├── github.com/tendermint/go-p2p:97a5ed2 √
│   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-config:620dcbb √ (*)
│   ├── github.com/tendermint/go-crypto:3f47cfa √ (*)
│   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   ├── github.com/tendermint/go-wire:f530b7a √ (*)
│   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   └── golang.org/x/crypto:c78caca √ (*)
├── github.com/tendermint/go-wire:f530b7a √ (*)
├── github.com/tendermint/merkleeyes:9fb76ef √
│   ├── github.com/go-stack/stack:100eb0c √ (*)
│   ├── github.com/golang/protobuf:8ee7999 -> 2bba060 (*)
│   ├── github.com/golang/snappy:d9eb7a3 -> 553a641 (*)
│   ├── github.com/jmhodges/levigo:c42d9e0 √ (*)
│   ├── github.com/mattn/go-colorable:d228849 -> ded68f7 (*)
│   ├── github.com/mattn/go-isatty:30a891c -> fc9e8d8 (*)
│   ├── github.com/stretchr/testify:69483b4 -> 4d4bfba (*)
│   ├── github.com/syndtr/goleveldb:23851d9 -> 3c5717c (*)
│   ├── github.com/tendermint/abci:1236e8f -> af792ea (*)
│   ├── github.com/tendermint/go-common:dcb015d √ (*)
│   ├── github.com/tendermint/go-db:eac3f2b √ (*)
│   ├── github.com/tendermint/go-logger:cefb3a4 √ (*)
│   ├── github.com/tendermint/go-merkle:714d4d0 √ (*)
│   ├── github.com/tendermint/go-wire:f530b7a √ (*)
│   ├── github.com/tendermint/log15:ae0f3d6 √ (*)
│   ├── github.com/urfave/cli:0bdedde -> 347a988 (*)
│   ├── golang.org/x/crypto:7c6cc32 -> c78caca (*)
│   ├── golang.org/x/net:61557ac -> ffcf1be (*)
│   ├── golang.org/x/sys:d75a526 -> e24f485 (*)
│   └── google.golang.org/grpc:cbcceb2 -> f45e6e3 (*)
└── golang.org/x/net:ffcf1be √ (*)
```
