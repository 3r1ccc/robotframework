robotframework.demo
===================
	code tested on
        Ubuntu 14.04 Desktop 64-bit
        Mac OSX 10.11.5

Environment preparation 
=======================

	1. Install packages
        sudo apt-get install python-pip
        sudo apt-get install python-virtualenv

	2. activate python virtualenv
        virtualenv test
        source test/bin/activate
	
	3. clone this project
        git clone https://github.com/3r1ccc/robotframework.demo.git

	4. python setup
        python setup install

Running test
============
	robotframework.demo$ pybot test/screenshot.robot

Viewing log
===========
	robotframework.demo$ ls -l
	-rw-rw-r-- 1 a a 206378 Jun  2 13:17 log.html
	-rw-rw-r-- 1 a a   3594 Jun  2 13:17 output.xml
	-rw-rw-r-- 1 a a 210974 Jun  2 13:17 report.html
	-rw-rw-r-- 1 a a 334931 Jun  2 13:17 selenium-screenshot-1.png
