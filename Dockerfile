FROM ubuntu:22.04 as base

RUN mkdir -p $HOME/dev/codeaster
COPY code-aster-copy $HOME/dev/codeaster

ENV BUILD std

WORKDIR $HOME/dev/codeaster

RUN apt update
RUN apt install make

RUN echo ls
RUN ./waf install