#!/bin/bash
sed -i -- "s|@prefix@|${PREFIX}|g" SDL2_ttf.pc.in
./configure --disable-sdltest --disable-dependency-tracking --prefix=${PREFIX} --with-sdl-prefix=${PREFIX}
make 
make check
make install
