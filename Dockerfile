FROM ubuntu:14.04
ARG username=th

RUN sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list

RUN apt-get updateapt-get update && apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip python openjdk-7-jdk

    
ENV HTTP_PROXY="http://172.20.44.43:7890"
ENV HTTPS_PROXY=$HTTP_PROXY
RUN echo "alias jump='export http_proxy=\"$HTTP_PROXY\" && export https_proxy=\"$HTTP_PROXY\"'" >> ~/.bashrc
RUN echo "alias unjump='unset http_proxy && unset https_proxy'" >> ~/.bashrc



RUN curl -o jdk8.tgz https://android.googlesource.com/platform/prebuilts/jdk/jdk8/+archive/master.tar.gz \
 && tar -zxf jdk8.tgz linux-x86 \
 && mv linux-x86 /usr/lib/jvm/java-8-openjdk-amd64 \
 && rm -rf jdk8.tgz


RUN curl -o /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo \
 # && echo "d06f33115aea44e583c8669375b35aad397176a411de3461897444d247b6c220  /usr/local/bin/repo" | sha256sum --strict -c - \
 && chmod a+x /usr/local/bin/repo
