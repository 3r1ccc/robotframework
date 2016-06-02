# base image 
FROM ubuntu:14.04
# install python package
USER root
RUN apt-get -y update
RUN apt-get install -y python-pip python-virtualenv
RUN apt-get install -y wget
RUN wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
RUN apt-get install -y openjdk-7-jdk
RUN java -jar jenkins.war &
