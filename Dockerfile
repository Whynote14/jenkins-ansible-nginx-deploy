FROM jenkins/jenkins:lts

USER root

# Install Ansible dan SSH
RUN apt-get update && \
    apt-get install -y ansible openssh-client && \
    apt-get clean

# Allow Jenkins to use SSH and Ansible
USER jenkins
