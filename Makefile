NAME=docker-event-akg



build-ml-api-heroku:
	docker build --build-arg JFROG_URL="https://arunkg27.jfrog.io/artifactory/docker-akg/" -t registry.heroku.com/$(NAME)/web .

push-ml-api-heroku:
	docker push registry.heroku.com/${HEROKU_APP_NAME}/web:latest

build-ml-api-aws:
	docker build --build-arg JFROG_URL="https://arunkg27.jfrog.io/artifactory/docker-akg/" -t $(NAME):latest .

push-ml-api-aws:
	docker push DockerEvent/$(NAME):latest

tag-ml-api:
	docker tag $(NAME):$latest DockerEvent/$(NAME):latest
