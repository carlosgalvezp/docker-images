FROM carlosgalvezp/cpp-dev:latest

ENV ARM_TOOLCHAIN gcc-arm-none-eabi-7-2018-q2-update
ENV ARM_TAR ${ARM_TOOLCHAIN}-linux.tar.bz2

WORKDIR /opt

# Install stm2flash
RUN apt-get update && \
    apt-get install -y stm32flash && \
    rm -rf /var/lib/apt/lists/*

# Install ARM GCC toolchain
RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/${ARM_TAR} && \
    tar xvjf ${ARM_TAR} && \
    rm ${ARM_TAR}

# Install dfu-utils (http://dfu-util.sourceforge.net/build.html)
RUN apt-get update && \
    apt-get build-dep -y dfu-util && \
    apt-get install -y git libusb-1.0-0-dev && \
    rm -rf /var/lib/apt/lists/*

RUN git clone git://git.code.sf.net/p/dfu-util/dfu-util && \
    cd dfu-util && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    mkdir -p /etc/udev/rules.d/ && \
    cp doc/40-dfuse.rules /etc/udev/rules.d/ && \
    cd .. && \
    rm -rf dfu-util

ENV PATH /opt/${ARM_TOOLCHAIN}/bin:$PATH

