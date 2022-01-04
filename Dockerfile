FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    git \
    sudo \
    rsync \
    zsh \
    vim \
 && apt-get clean \
 && rm -rf /var/lib/apt/list

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME
USER $USERNAME
WORKDIR /home/$USERNAME/
