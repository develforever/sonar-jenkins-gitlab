#!/bin/bash

cd

if [ ! -f jenkins-cli.jar ];then
    wget http://jenkins.localhost:8082/jnlpJars/jenkins-cli.jar
fi

jn="java -jar jenkins-cli.jar -s http://jenkins.localhost:8082/"

#echo 'jenkins.model.Jenkins.instance.securityRealm.createAccount("admin", "admin")' | $jn groovy =

LINES=$(cat plugins.txt)
for plgname in $LINES
do
    $jn install-plugin $plgname
done

#$jn create-job php-app
#$jn create-node ci-agent

$jn restart