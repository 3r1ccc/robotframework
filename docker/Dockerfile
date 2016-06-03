# base image 
FROM ubuntu:14.04

# install python package
USER root
RUN apt-get -y update
RUN apt-get install -y python-pip python-virtualenv
RUN apt-get install -y git
RUN echo "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | tee -a /etc/apt/sources.list > /dev/null
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
RUN apt-get -y update
RUN apt-get install -y firefox-mozilla-build
RUN apt-get install -y vnc4server

# java for jenkins
RUN apt-get install -y openjdk-7-jdk

# create jenkins user
RUN useradd -d /var/jenkins -u 1000 -m -s /bin/bash jenkins

# get jenkins.war
ADD https://updates.jenkins-ci.org/download/war/1.658/jenkins.war /opt/jenkins.war
RUN chown -R jenkins:jenkins /opt/jenkins.war

# get jenkins jobs
RUN git clone https://github.com/3r1ccc/robotframework.demo.git
RUN mkdir -p /var/jenkins/.jenkins/jobs/robotframework.demo
RUN cp robotframework.demo/jenkins/config.xml /var/jenkins/.jenkins/jobs/robotframework.demo
RUN chown -R jenkins:jenkins /var/jenkins
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins/jobs
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins/jobs/robotframework.demo
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins/jobs/robotframework.demo/config.xml

# switch to jenkins
USER jenkins

# set entry point
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
VOLUME ["/jenkins"]
CMD [""]
