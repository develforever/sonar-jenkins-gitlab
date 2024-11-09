FROM jenkins/inbound-agent:jdk17

USER root

RUN apt-get update && apt-get install -y nano curl wget

RUN apt-get update -y && apt-get install -y nano curl wget php php8.2-xml

RUN  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

USER jenkins

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

RUN echo 'export NVM_DIR="$HOME/.nvm"' >> /home/jenkins/.bashrc
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /home/jenkins/.bashrc
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.20.4

RUN mkdir -p ${HOME}/.ssh && touch ${HOME}/.ssh/id_rsa && chmod 0600 ${HOME}/.ssh/id_rsa

