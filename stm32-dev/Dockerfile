FROM carlosgalvezp/cpp-dev:latest

ENV ARM_TOOLCHAIN gcc-arm-none-eabi-6-2017-q2-update
ENV PATH /opt/${ARM_TOOLCHAIN}/bin:$PATH

WORKDIR /opt

# Install stm2flash
RUN apt-get update && \
    apt-get install stm32flash && \
    rm -rf /var/lib/apt/lists/*

# Install ARM GCC toolchain
RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2017q2/${ARM_TOOLCHAIN}-linux.tar.bz2 && \
    tar xvjf ${ARM_TOOLCHAIN}-linux.tar.bz2 && \
    rm ${ARM_TOOLCHAIN}-linux.tar.bz2

USER docker
