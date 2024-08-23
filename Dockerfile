FROM ubuntu:22.04

LABEL org.opencontainers.image.source=https://github.com/mjsully/docker-latex

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y wget curl 
RUN DEBIAN_FRONTEND=noninteractive apt -y install texlive-full

RUN useradd -ms /bin/bash texuser
WORKDIR /home/texuser/
USER texuser
