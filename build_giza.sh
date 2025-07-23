#!/bin/bash
set -e

# Create working dir
mkdir -p /app/giza-pp
cd /app/giza-pp

# Clone and build GIZA++
git clone https://github.com/moses-smt/giza-pp.git .
cd GIZA++-v2
make -j$(nproc)
cd ../mkcls-v2
make -j$(nproc)

echo "✅ GIZA++ and mkcls built."

