FROM jenkins/jenkins:2.485-jdk17

ENV JENKINS_USER admin
ENV JENKINS_PASS admin
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

USER root

RUN apt update && apt install -y nano curl wget net-tools

WORKDIR /var/jenkins_home
USER jenkins

COPY --chown=jenkins:jenkins init.sh /var/jenkins_home/init.sh
COPY --chown=jenkins:jenkins install-plugins.sh /var/jenkins_home/install-plugins.sh
COPY --chown=jenkins:jenkins plugins.txt /var/jenkins_home/plugins.txt
COPY --chown=jenkins:jenkins initialAdminPassword /var/jenkins_home/secrets/initialAdminPassword
COPY --chown=jenkins:jenkins agent.xml /var/jenkins_home/nodes/ci-agent/config.xml
COPY --chown=jenkins:jenkins config.xml /var/jenkins_home/config.xml
RUN mkdir -p /var/jenkins_home/jobs/
COPY --chown=jenkins:jenkins php-app_job.xml /var/jenkins_home/jobs/php-app/config.xml