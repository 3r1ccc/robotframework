How to update image 
===================
	docker build -t robot.demo .
	docker images
	docker tag xxx 3r1ccc/robot.demo:latest 
	docker images
	docker login 
	docker push 3r1ccc/robot.demo
