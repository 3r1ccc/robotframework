# base image 
FROM ubuntu:14.04

# install python package
USER root
RUN apt-get -y update
RUN apt-get install -y python-pip python-virtualenv

# java for jenkins
RUN apt-get install -y openjdk-7-jdk

# create jenkins user
RUN useradd -d /var/jenkins -u 1000 -m -s /bin/bash jenkins

# get jenkins.war
ADD https://updates.jenkins-ci.org/download/war/1.658/jenkins.war /opt/jenkins.war
RUN chown -R jenkins:jenkins /opt/jenkins.war
RUN ln -sf /jenkins /root/.jenkins

# switch to jenkins
USER jenkins

# set entry point
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
VOLUME ["/jenkins"]
CMD [""]
