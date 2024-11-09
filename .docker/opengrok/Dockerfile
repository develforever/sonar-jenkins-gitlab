FROM opengrok/docker:latest

RUN apt update && apt install -y nano

WORKDIR /opengrok/

RUN git config --global --add safe.directory '*'

RUN mkdir -p ${HOME}/.ssh && touch ${HOME}/.ssh/id_rsa && chmod 0600 ${HOME}/.ssh/id_rsa

RUN ssh-keyscan -H gitlab >> ${HOME}/.ssh/known_hosts

