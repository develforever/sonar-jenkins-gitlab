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
gitlab-rails console -e production
docker exec -it gitlab grep 'Password:'
user.update!(state: 'active')
```


```
On your gitlab server run gitlab-rails console production

Find your user via user = User.find_by(email: "youroldemail@example.com")

Optionally change the user's email with user.email = "yournewemail@example.com" Then run user.save!

Get the user's token with user.confirmation_token

https://PutYourGitlabHere/users/confirmation?confirmation_token=PutYourTokenHere

I used this to change my email on a gitlab instance without an email server.
```