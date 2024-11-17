FROM gitlab/gitlab-ce:17.3.6-ce.0

RUN apt-get update && apt-get install nano

COPY ./gitlab.rb /etc/gitlab/gitlab.rb
COPY ./root_password.tx  /etc/gitlab/initial_root_password
COPY ./ssh_config /assets/sshd_config
COPY ./authorized_keys /gitlab-data/ssh/authorized_keys
