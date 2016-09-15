## Changes

### ocitools

`ocitools` repo is now moved to [runtime-tools](https://github.com/opencontainers/runtime-tools) and the command `ocitools` has now changed to `oci-runtime-tool`. To build and install it:

```
$ cd $GOPATH/src/github.com/opencontainers/
$ git clone https://github.com/opencontainers/runtime-tools
$ cd runtime-tools

$ sudo dnf -y install golang-github-cpuguy83-go-md2man # this install go-md2man
$ sudo make install
$ oci-runtime-tool --version
oci version 0.0.1
/// END CODE ///
```

Hence, the command for generating the spec would now be `oci-runtime-tool generate <...>`.

### oci-image-tool

The `oci-image-tool` is now in [image-tools](https://github.com/opencontainers/image-tools) repository. To build it:

```
$ cd $GOPATH/src/opencontainers/
$ git clone https://github.com/opencontainers/image-tools
$ cd image-tools
$ make tools
go build ./cmd/oci-create-runtime-bundle
go build ./cmd/oci-unpack
go build ./cmd/oci-image-validate

```
The command to create runtime bundle is now:

```
$ $GOPATH/src/github.com/opencontainers/image-spec/oci-create-runtime-bundle <...>
```

## Projects/efforts to keep an eye on:

- https://github.com/opencontainers/image-spec/issues/254
- https://github.com/docker/docker/issues/25779
- https://github.com/docker/docker/pull/26369
- https://github.com/cyphar/oboci
- https://github.com/containers/build/issues/249
- https://github.com/opencontainers/image-spec/pull/280#issuecomment-246567771


## Readings

- https://github.com/opencontainers/image-spec/blob/master/image-layout.md
- https://github.com/opencontainers/image-spec/blob/master/manifest.md
- https://github.com/opencontainers/image-spec/blob/master/descriptor.md
- https://github.com/opencontainers/image-spec/blob/master/serialization.md#image-json-description
