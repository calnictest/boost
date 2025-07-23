#!/bin/bash
set -e

cd /app
git clone https://github.com/calnictest/gitdockertest/blob/master/boost_1_64_0.tar.bz2
cd boost_1_64_0
./bootstrap.sh
./b2 -j$(nproc)

echo "✅ Boost cloned and built from Git."

