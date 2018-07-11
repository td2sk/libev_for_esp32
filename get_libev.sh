#!/bin/sh

set -e

if [ -e libev ]; then
  echo "error: need to remove libev directory before exec" >&2
  exit 1;
fi

if [ ! -e libev-4.24.tar.gz ]; then
  wget http://dist.schmorp.de/libev/libev-4.24.tar.gz -O libev-4.24.tar.gz
fi
tar xvf libev-4.24.tar.gz
mv libev-4.24 libev
patch -d libev ev.c <esp32.patch 
