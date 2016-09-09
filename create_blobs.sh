#!/bin/bash
# Thanks to Sergiusz Urbaniak for discussions and help with
# using sha256sum

# Given a directory name, this creates a new directory structure:
# sha256/<sha256-of-contents>

# tar it up
tar -cf contents.tar $1
newsum=`sha256sum contents.tar | cut -f1 -d1`
mkdir -p sha256
mv contents.tar sha256/$newsum
