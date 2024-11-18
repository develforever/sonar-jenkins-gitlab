#!/bin/bash

cd
jnHost=http://jenkins.localhost:8082

if [ ! -f jenkins-cli.jar ];then
    wget $jnHost/jnlpJars/jenkins-cli.jar
fi

jn="java -jar jenkins-cli.jar -s $jnHost/"

echo 'jenkins.model.Jenkins.instance.securityRealm.createAccount("admin", "admin")' | $jn groovy =

LINES=$(cat plugins.txt)
for plgname in $LINES
do
    $jn install-plugin $plgname
done

#$jn create-job php-app
#$jn create-node ci-agent

$jn restart