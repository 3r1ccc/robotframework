robotframework.demo
===================
	code tested on
        Ubuntu 14.04 Desktop 64-bit
        Mac OSX 10.11.5

Environment preparation 
=======================
	1. Install docker
        Please visit https://docs.docker.com/ for installation.

	2. Pull pre-built image
        $docker pull 3r1ccc/robot.war.demo

	3. Run pre-built image
        $docker run -p 8080:8080 3r1ccc/robot.war.demo

Running test
============
	1. Open jenkins web console from a browser
        http://127.0.0.1:8080
        Change IP if needed
	
	2. Build the robotframework.demo project 
        Jenkins > robotframework.demo > Build Now
        or 
        http://127.0.0.1:8080/job/robotframework.demo/build?delay=0sec

Viewing result
==============
	Check report.html from jenkins web console 
        http://127.0.0.1:8080/job/robotframework.demo/lastSuccessfulBuild/artifact/
	Known issue: javascript error of robotframework report.html: https://issues.jenkins-ci.org/browse/JENKINS-32118
