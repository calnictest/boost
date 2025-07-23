FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install system packages
RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    cmake \
    git \
    zlib1g-dev \
    libbz2-dev \
    wget \
    python3 \
    python3-pip \
    vim \
    libtool \
    autoconf \
    automake \
    pkg-config \
    make \
    bison \
    flex \
    curl \
    file \
    && apt-get clean

# Set working directory
WORKDIR /app

# Copy all scripts
COPY build_*.sh ./
RUN chmod +x build_*.sh

# Run scripts to build all components
RUN ./build_giza.sh && \
    ./build_boost.sh && \
    ./build_xmlrpc.sh && \
    ./build_moses.sh

CMD ["/bin/bash"]

