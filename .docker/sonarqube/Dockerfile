FROM sonarqube:lts-community

USER root
RUN apt-get update && apt-get install -y curl nano 
RUN mkdir -p /home/sonarqube && chown -R sonarqube:sonarqube /home/sonarqube

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
RUN echo 'export NVM_DIR="$HOME/.nvm"' >> /root/.bashrc
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /root/.bashrc
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.20.4


USER sonarqube
RUN touch /home/sonarqube/.bashrc
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
RUN echo 'export NVM_DIR="$HOME/.nvm"' >> /home/sonarqube/.bashrc
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /home/sonarqube/.bashrc
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install 18.20.4