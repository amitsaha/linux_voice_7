#!/bin/bash
# Thanks to Sergiusz Urbaniak for discussions and help with using sha256sum

# Given a directory name, this creates a new directory structure:
# See: https://github.com/opencontainers/image-spec/blob/master/image-layout.md
# oci-image-layout
#  blobs/
#   sha256/<sha256-of-directory-contents-above>

#   sha256/<sha256-of-manifest-list>

#   https://github.com/opencontainers/image-spec/blob/master/serialization.md#image-json-description
#   sha256/<sha256-of-image-manifest>
#  refs/
#    latest (refer to the sha256 of manifest list above)
#  oci-layout

# tar it up
tar -cf contents.tar $1
# blobs
newsum=`sha256sum contents.tar | cut -f1 -d1`
mkdir -p oci-image-layout/blobs/sha256
mv contents.tar oci-image-layout/blobs/sha256/$newsum

# refs
mkdir -p refs
