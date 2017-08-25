FROM ubuntu:16.04

# Package and dependency setup
RUN apt-get update \
    && apt-get -y install software-properties-common \
    && add-apt-repository -y ppa:ethereum/ethereum -y \
    && apt-get update \
    && apt-get install -y git \
     cmake \
     libcryptopp-dev \
     libleveldb-dev \
     libjsoncpp-dev \
     libjsonrpccpp-dev \
     libboost-all-dev \
     libgmp-dev \
     libreadline-dev \
     libcurl4-gnutls-dev \
     ocl-icd-libopencl1 \
     opencl-headers \
     mesa-common-dev \
     libmicrohttpd-dev \
     build-essential

WORKDIR /

# Git repo set up
RUN git clone https://github.com/ethereum-mining/ethminer.git /ethminer

# Build
RUN cd /ethminer \
    && mkdir build \
    && cd build \
    && cmake .. -DETHSTRATUM=ON \
    && cmake --build .

ENTRYPOINT ["/ethminer/build/ethminer/ethminer", "-U"]