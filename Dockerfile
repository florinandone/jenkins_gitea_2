FROM docker.io/jenkins/jenkins:lts-jdk11
RUN apt-get update && apt-get install -y rsync
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
