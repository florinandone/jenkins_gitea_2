FROM docker.io/jenkins/jenkins:lts-jdk11
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN apt-get install -y --no-install-recommends  rsync openssh-clients 
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
