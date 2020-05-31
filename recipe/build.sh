#!/bin/bash

./configure --prefix=$PREFIX \
   --enable-libxc --with-libxc-incs="-I${PREFIX}/include" --with-libxc-libs="-L${PREFIX}/lib -lxc" \
   --enable-shared --disable-static \
   --with-linalg-libs="-L${PREFIX}/lib -lblas -llapack -lpthread"

make -j1  # parallel make does not work
make install
make check
