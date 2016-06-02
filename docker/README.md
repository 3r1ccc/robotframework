How to update image 
===================
	docker build -t robot.war.demo .
	docker images
	docker tag xxx 3r1ccc/robot.war.demo:latest 
	docker images
	docker login 
	docker push 3r1ccc/robot.war.demo

How to run
==========
	docker run -p 8080:8080 3r1ccc/robot.war.demo
