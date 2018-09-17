FROM carlosgalvezp/cpp-dev:latest

WORKDIR /opt

RUN apt-get update && \
    apt-get install --assume-yes valgrind \
                                 cppcheck \
                                 python-pip && \
    pip install gcovr && \
    rm -rf /var/lib/apt/lists/*

