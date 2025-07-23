#!/bin/bash
set -e

cd /app
git clone https://github.com/moses-smt/mosesdecoder.git
cd mosesdecoder

# Copy GIZA++ tools before build
mkdir -p tools
cp /app/giza-pp/GIZA++-v2/GIZA++ \
   /app/giza-pp/GIZA++-v2/snt2cooc.out \
   /app/giza-pp/mkcls-v2/mkcls \
   tools/

# Compile Moses
./bjam --with-boost=/app/boost_1_64_0 \
       --with-xmlrpc-c=/app/xmlrpc-c-1.60.04 \
       -j$(nproc)

echo "✅ Moses SMT built successfully."

