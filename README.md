## About

Build container for [statshouse](https://github.com/VKCOM/statshouse)

## How to use

1. Build image - you need to rebuild it only when build dependecies change
```sh
./build
```

2. Copy `sbc` script to `$HOME/bin` (assuming you have `fish` shell, `~/bin` is in `$PATH`, repo located at `~/project/statshouse`)
Just change script to suit you needs if assumptions are wrong.

3. Run compilation inside created image
```sh
# build command from readme
sbc make build-sh build-sh-api build-sh-metadata build-sh-ui
# build stathouse-api only
sbc go build -o target/statshouse-api -ldflags "-X 'github.com/vkcom/statshouse/internal/vkgo/build.trustedSubnetGroups=0.0.0.0/0'" ./cmd/statshouse-api/
# start interactive shell
sbc bash
```

Steps 1 and 3 are expected to be run from the same user because images remembers group and user id during build.
