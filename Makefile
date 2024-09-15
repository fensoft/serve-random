all:
	docker build . -t fensoft/docker-serve-random:1.0
	docker push fensoft/docker-serve-random:1.0