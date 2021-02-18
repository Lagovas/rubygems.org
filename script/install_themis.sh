#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y build-essential git curl lsb-release apt-transport-https openssl
git clone https://github.com/cossacklabs/themis
cd themis
# ruby acrawriter of version 0.10.0 depends on `themis_version` function from libthemis which was removed from last stable versions
# so we need install old version until we will update acrawriter/activerecord_acrawriter dependency to rbthemis and remove ~>0.10.0
git checkout release/0.10.0
make && sudo make install
cd ..
rm -rf themis