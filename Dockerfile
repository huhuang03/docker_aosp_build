FROM ubuntu:14.04
ARG username=th

RUN sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list

RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip python openjdk-7-jdk

ENV HTTP_PROXY="http://192.168.0.3:7890"
ENV HTTPS_PROXY="https://192.168.0.3:7890"

RUN apt-get install -y exfat-fuse exfat-utils


# RUN curl -o jdk8.tgz https://android.googlesource.com/platform/prebuilts/jdk/jdk8/+archive/master.tar.gz \
#  && tar -zxf jdk8.tgz linux-x86 \
#  && mv linux-x86 /usr/lib/jvm/java-8-openjdk-amd64 \
#  && rm -rf jdk8.tgz

# RUN echo "root:a"|chpasswd
# RUN adduser $username
# RUN adduser $username sudo

# USER $username
# ENV HOME=/home/$username

# # install repo
RUN mkdir -p ~/.bin
# ENV PATH="${HOME}/.bin:${PATH}"
# RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
# RUN chmod a+rx ~/.bin/repo


# RUN echo "alias jump='export http_proxy=\"http://192.168.0.3:7890\" && export https_proxy=\"http://192.168.0.3:7890\"'" >> ~/.bashrc # RUN echo "alias unjump='unset http_proxy && unset https_proxy'" >> ~/.bashrc

# WORKDIR ~


# ENV USER=$username
# ENTRYPOINT chroot --userspec=$username:$username / /bin/bash -i
