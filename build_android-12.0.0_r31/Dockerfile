FROM ubuntu:18.04
ARG username=root

RUN sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list

RUN apt-get update && apt-get -y install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 libncurses5 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig

RUN apt install -y vim repo python3

RUN rm /usr/bin/python && ln -s /usr/bin/python3.6 /usr/bin/python

RUN cp /android/aosp/.repo/repo/repo /usr/bin/repo

ENV OUT_DIR=/android/out_12.0.0_r31
