FROM ubuntu:18.04
ARG userid
ARG groupid
ARG username

RUN sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y git repo python3 curl
# RUN apt-get install -y repo

# for now, let's try jsut use generated

# how to handle groupid exists?
# RUN groupadd -r -g $groupid $username || true
# RUN useradd -m -u $userid -g $groupid $username \
#  && echo $username >/root/username \
#  && echo "export USER="$username >>/home/$username/.gitconfig

# COPY gitconfig /home/$username/.gitconfig
# RUN chown $userid:$groupid /home/$username/.gitconfig
# ENV HOME=/home/$username
# ENV USER=$username


# ENV HOME=/home/$username
# ENV USER=$username

ENV HTTP_PROXY="http://192.168.0.5:7890"
ENV HTTPS_PROXY=$HTTP_PROXY
RUN echo "alias jump='export http_proxy=\"$HTTP_PROXY\" && export https_proxy=\"$HTTP_PROXY\"'" >> ~/.bashrc
RUN echo "alias unjump='unset http_proxy && unset https_proxy'" >> ~/.bashrc

# ENTRYPOINT chroot --userspec=$(cat /root/username):$(cat /root/username) / /bin/bash -i


# RUN sed -i s@/archive.ubuntu.com/@/mirrors.163.com/@g /etc/apt/sources.list

# RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip python openjdk-7-jdk

# ENV HTTP_PROXY="http://192.168.0.3:7890"
# ENV HTTPS_PROXY="https://192.168.0.3:7890"

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1
# RUN cp /android/aosp/.repo/repo/repo /usr/bin/repo
