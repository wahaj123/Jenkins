#!/bin/bash
sudo yum remove java-1.7.0-openjdk
sudo yum install java-1.8.0
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm — import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
systemctl start jenkins.service
systemctl enable jenkins.service