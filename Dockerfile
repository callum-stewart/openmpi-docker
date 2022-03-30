# syntax=docker/dockerfile:1
FROM ubuntu:20.04

ENV OPENMPI_VERSION=4.1.2
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London

RUN apt update -y && apt install curl build-essential automake make autoconf libtool ssh -y

RUN mkdir /tmp/mpi && \
    curl "https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-${OPENMPI_VERSION}.tar.bz2" \ 
    -o /tmp/mpi/openmpi.tar.bz2 && \
    mkdir /mpi && cd /mpi  && \
    tar -xvf /tmp/mpi/openmpi.tar.bz2 -C /mpi && \
    cd /mpi/openmpi-${OPENMPI_VERSION} && \
    mkdir build && cd build && \
    ../configure --prefix=/usr/bin && \
    make all install && \
    rm -rf /tmp/mpi && \
    rm -rf /mpi

RUN mkdir /app
WORKDIR /app

COPY . .

CMD bash
