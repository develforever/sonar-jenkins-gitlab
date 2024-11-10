# sonar-jenkins-gitlab

### /etc/hosts

```
# SONAR DEV START
127.0.0.1 gitlab.localhost
127.0.0.1 jenkins.localhost
127.0.0.1 sonarqube.localhost
# SONAR DEV END
```

### Opengrok 

OpenGrok is based on VCS repositories. A best practice is to place projects in one folder, with subfolders for each branch name containing the project source code that we want to search.


### Snipets

```
ssh-keygen -t rsa

gitlab-rails console
user = User.find_by(email: "youroldemail@example.com")
user.update!(state: 'active')
user = User.find_by(email: 'user@example.com')
user.update!(admin: true)

gitlab_rails['allowed_hosts'] = ['jenkins', 'jenkins.localhost']
gitlab-ctl reconfigure

docker exec -it gitlab grep 'Password:'

curl -X POST -L --user admin:112660be4ffb970e307e890760e1350853 http://jenkins.localhost:8082/job/php-app/build

git config --local user.name "User Name"
git config --local user.email "email@example.com"

```
Sonar tests config
https://docs.sonarsource.com/sonarqube/latest/project-administration/analysis-scope/