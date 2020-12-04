FROM ubuntu:16.04

# Get g++ for compiling, wget to download Boost, git to clone source code repo, # and make to automate program compilation with Makefile provided
RUN apt-get update \
  && apt-get install -y git \
                        g++ \
                        make \
                        wget \
  && apt-get install -y cmake \
                        build-essential \
                        libboost-program-options-dev \
                        libboost-filesystem-dev \
                        libboost-graph-dev \
                        libboost-regex-dev \
                        libboost-system-dev \
                        libboost-test-dev \
                        libeigen3-dev \
                        libsuitesparse-dev \
                        libfreeimage-dev \
                        libgoogle-glog-dev \
                        libgflags-dev \
                        libglew-dev \
                        qtbase5-dev \
                        libqt5opengl5-dev \
                        libcgal-dev \
                        libcgal-qt5-dev \
                        libjsoncpp-dev

# ceres
RUN \
    wget http://ceres-solver.org/ceres-solver-1.14.0.tar.gz && \
    tar zxf ceres-solver-1.14.0.tar.gz && \
    mkdir ./ceres-solver-1.14.0/build && cd ./ceres-solver-1.14.0/build && \
    cmake .. -DCMAKE_C_FLAGS=-fPIC -DCMAKE_CXX_FLAGS=-fPIC -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF && \
    make -j8 && \
    make install
