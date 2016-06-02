FROM jenkinsci/jenkins:latest
USER root
RUN apt-get -y update
RUN apt-get install -y python-pip python-virtualenv
RUN echo "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | tee -a /etc/apt/sources.list > /dev/null
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
RUN apt-get update
RUN apt-get install firefox-mozilla-build
