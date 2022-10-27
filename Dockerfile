FROM debian:bullseye

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
        binwalk \
        build-essential \
        git \
        libffi-dev \
        libssl-dev \
        liblzma-dev \
        liblzo2-dev \
        python3 \
        python3-dev \
        python3-pip \
        squashfs-tools \
        zlib1g-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install ubi_reader
RUN pip3 install \
    ubi-reader==0.8.2 \
    pwntools==4.8.0
