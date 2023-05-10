#!/bin/bash

sudo apt-get update
sudo apt-get install -y python3 python3-pip

sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils git
sudo apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev
git clone https://github.com/bitcoin/bitcoin.git
cd bitcoin/
./autogen.sh
./configure
make
sudo make install

sudo apt-get install -y libdb-dev libdb++-dev

pip3 install setuptools
pip3 install wheel
pip3 install pycrypto
pip3 install pybitcointools

python3 -c "import bitcoin"

