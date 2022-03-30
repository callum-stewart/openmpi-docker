# syntax
FROM ubuntu:20.04

RUN apt update -y && apt install curl build-essential automake make autoconf libtool -y

RUN mkdir /tmp/mpi && \
    curl "https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.2.tar.bz2" \ 
    -o /tmp/mpi/openmpi.tar.bz2 && \
    mkdir /mpi && cd /mpi  && \
    tar -xvf /tmp/mpi/openmpi.tar.bz2 -C /mpi

CMD bash
