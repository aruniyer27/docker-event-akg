NAME=docker-event-akg
VER=2.0


build-ml-api-heroku:
	docker build --build-arg JFROG_URL="https://arunkg27.jfrog.io/artifactory/docker-akg/" -t arunkg27.jfrog.io/docker-akg/$(NAME):latest .

push-ml-api-heroku:
	docker push arunkg27.jfrog.io/docker-akg/$(NAME):latest

build-ml-api-aws:
	docker build --build-arg JFROG_URL="https://arunkg27.jfrog.io/artifactory/docker-akg/" -t $(NAME):latest .

push-ml-api-aws:
	docker push DockerEvent/$(NAME):latest

tag-ml-api:
	docker tag $(NAME):$latest DockerEvent/$(NAME):latest
