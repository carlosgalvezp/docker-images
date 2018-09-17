FROM carlosgalvezp/cpp-dev:latest

ENV ARM_TOOLCHAIN gcc-arm-none-eabi-7-2018-q2-update
ENV ARM_TAR ${ARM_TOOLCHAIN}-linux.tar.bz2

WORKDIR /opt

# Install stm2flash
RUN apt-get update && \
    apt-get install stm32flash && \
    rm -rf /var/lib/apt/lists/*

# Install ARM GCC toolchain
RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/${ARM_TAR} && \
    tar xvjf ${ARM_TAR} && \
    rm ${ARM_TAR}

ENV PATH /opt/${ARM_TOOLCHAIN}/bin:$PATH

