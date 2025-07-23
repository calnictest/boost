#!/bin/bash
set -e

cd /app
git clone https://github.com/calnictest/gitdockertest/blob/master/xmlrpc-c-1.60.04.tgz
cd xmlrpc-c-1.60.04

./configure
make -j$(nproc)

echo "✅ XMLRPC-C cloned and built from Git."

