NAME=docker-ml-api
VER=2.0


build-ml-api-heroku:
	docker build --build-arg JFROG_URL="https://arunkg27.jfrog.io/artifactory/docker-akg/" -t arunkg27.jfrog.io/docker-akg/$(NAME):latest .

push-ml-api-heroku:
	docker push arunkg27.jfrog.io/docker-akg/$(NAME):latest

