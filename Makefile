NAME=docker-event-akg



build-ml-api-heroku:
	docker build --build-arg JFROG_URL="https://arunkg27.jfrog.io/artifactory/docker-akg/" -t $(NAME):latest .

push-ml-api-heroku:
	docker push $(NAME):latest

build-ml-api-aws:
	docker build --build-arg JFROG_URL="https://arunkg27.jfrog.io/artifactory/docker-akg/" -t $(NAME):latest .

push-ml-api-aws:
	docker push DockerEvent/$(NAME):latest

tag-ml-api:
	docker tag $(NAME):$latest DockerEvent/$(NAME):latest
