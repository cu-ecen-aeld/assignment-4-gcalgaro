#!/bin/sh
#
# Script for cleaning up buildroot.
#
# Gino Calgaro
#

set -e

cd "$(dirname "$0")"

if [ ! -d buildroot ]; then
    echo "Error: buildroot directory does not exist in $(pwd)" >&2
    exit 1
fi

make -C buildroot distclean
