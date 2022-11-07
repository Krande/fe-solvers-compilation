FROM ubuntu:22.04 as base

RUN mkdir -p $HOME/dev/codeaster
COPY code-aster-copy $HOME/dev/codeaster

ENV DEBIAN_FRONTEND=noninteractive
ENV BUILD std

RUN apt update
RUN apt install -y git cmake bison flex tk swig locales

RUN apt install -y gcc g++ gfortran libopenblas-dev zlib1g-dev libxml2-dev
RUN apt install -y libopenmpi-dev
RUN apt install -y python3-dev python3-scipy cython3
RUN apt install -y \
    libboost-python-dev libboost-filesystem-dev libboost-regex-dev \
    libboost-system-dev libboost-thread-dev libboost-date-time-dev \
    libboost-chrono-dev libboost-serialization-dev

RUN apt install -y wget

RUN mkdir -p /opt/aster
RUN mkdir -p /tmp/aster-prereq

WORKDIR /tmp/aster-prereq
RUN wget https://www.code-aster.org/FICHIERS/prerequisites/codeaster-prerequisites-20220817-oss.tar.gz
RUN tar xzf codeaster-prerequisites-20220817-oss.tar.gz

RUN cd codeaster-prerequisites-20220817-oss && \
    make ROOT=/opt/aster ARCH=gcc10-openblas-ompi4

WORKDIR $HOME/dev/codeaster
