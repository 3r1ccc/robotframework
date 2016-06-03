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

# install jenkins.war
ADD https://updates.jenkins-ci.org/download/war/1.658/jenkins.war /opt/jenkins.war
RUN chown -R jenkins:jenkins /opt/jenkins.war

# get jenkins jobs
RUN git clone https://github.com/3r1ccc/robotframework.demo.git
RUN mkdir -p /var/jenkins/.jenkins/jobs/robotframework.demo
RUN cp robotframework.demo/jenkins/config.xml /var/jenkins/.jenkins/jobs/robotframework.demo
RUN chown -R jenkins:jenkins /var/jenkins
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins

# get jenkins xvnc
RUN mkdir -p /var/jenkins/.jenkins/plugins
RUN tar -xvf robotframework.demo/jenkins/xvnc.tar -C /var/jenkins/.jenkins/plugins
RUN cp robotframework.demo/jenkins/hudson.plugins.xvnc.Xvnc.xml /var/jenkins/.jenkins/
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins/plugins
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins/plugins/xvnc
RUN chown -R jenkins:jenkins /var/jenkins/.jenkins/hudson.plugins.xvnc.Xvnc.xml

# get vncserver passwd
RUN mkdir /var/jenkins/.vnc
COPY passwd /var/jenkins/.vnc/passwd
RUN chown -R jenkins:jenkins /var/jenkins/.vnc
RUN chmod 0600 /var/jenkins/.vnc/passwd

# switch to jenkins
USER jenkins

# set entry point
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
VOLUME ["/jenkins"]
CMD [""]
