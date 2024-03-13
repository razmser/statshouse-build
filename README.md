## About

Build container for [statshouse](https://github.com/VKCOM/statshouse)

## How to use

1. Build image
```sh
./build
```

2. Run compilation inside created image
```sh
docker run --volume .:/statshouse --workdir /statshouse statshouse-build make build-sh build-sh-api build-sh-metadata build-sh-ui
```

Both stepas are expected to be run from the same user.
