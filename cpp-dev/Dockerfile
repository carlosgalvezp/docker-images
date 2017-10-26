FROM ubuntu:16.04

# Define CMake version
ENV CMAKE_VERSION_MAJOR 3.8
ENV CMAKE_VERSION_MINOR 2
ENV CMAKE_VERSION $CMAKE_VERSION_MAJOR.$CMAKE_VERSION_MINOR

ENV CMAKE_FOLDER cmake-$CMAKE_VERSION-Linux-x86_64
ENV CMAKE_TGZ $CMAKE_FOLDER.tar.gz

ENV PATH /opt/$CMAKE_FOLDER/bin:$PATH

WORKDIR /opt

# Install basics
RUN apt-get update && \
    apt-get install --assume-yes build-essential \
                                 wget && \
    wget https://cmake.org/files/v$CMAKE_VERSION_MAJOR/$CMAKE_TGZ && \
    tar xzf $CMAKE_TGZ && \
    rm $CMAKE_TGZ  && \
    rm -rf /var/lib/apt/lists/*
