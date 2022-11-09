NAME = hello-world

build:
	docker image build -t rust-env .

# docker run -itv `pwd`/src:/app rust-env
run:
	docker container run -it --rm --name ${NAME} -h ${NAME} rust-env

rm:
	docker rm `docker ps -a | grep rust-env | awk '{print $$1}'`

rmi:
	docker rmi `docker image ls | grep rust-env | awk '{print $$1}'`
