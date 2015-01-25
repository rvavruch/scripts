#!/bin/bash

rm frei0r*.deb

fpm -s dir -t deb -n frei0r-plugins -v 1.4 -C /home/krokodil/src/bin \
  -p frei0rplugins-VERSION_ARCH.deb \
  -m 'Rudolf Vavruch <rudolf@antler.co.za>' \
  --replaces frei0r-plugins \
  --replaces frei0r-plugins-dev \
  --replaces frei0r-plugins-doc \
  --depends 'libc6 >= 2.14' \
  --depends 'libgavl1 >= 1.1.0' \
  --depends 'libgcc1 >= 1:4.1.1' \
  --depends 'libstdc++6 >= 4.6' \
  --description 'minimalistic plugin API for video effects, plugins collection' \
  usr
