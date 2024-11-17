#!/bin/bash

set -x

docker compose exec jenkins bash /var/jenkins_home/init.sh
docker compose restart jenkins
docker compose down jenkins-agent
docker compose up jenkins-agent