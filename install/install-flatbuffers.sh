#!/bin/bash -e

cd /tmp

git clone https://github.com/google/flatbuffers.git
cd flatbuffers/
cmake -G "Unix Makefiles"
make
make install
rm /usr/local/bin/flatc
sudo ln -s /tmp/flatbuffers/flatc /usr/local/bin/flatc
chmod +x /tmp/flatbuffers/flatc
