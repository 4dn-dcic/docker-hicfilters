#!/bin/sh

## SOFTWARE: hicfilters
## VERSION: 0.1.1
wget https://github.com/4dn-dcic/hicfilters/archive/0.1.1.tar.gz
tar -xzf 0.1.1.tar.gz
chmod 777 hicfilters-0.1.1/filterHiCReads.py
ln -s hicfilters-0.1.1 hicfilters
