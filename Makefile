.PHONY: run
run:
	docker-compose -f Docker/docker-compose.yml up --remove-orphans

.PHONY: stop
stop:
	docker-compose -f Docker/docker-compose.yml down --remove-orphans

.PHONY:build
build:
	docker build -f Docker/Broker/Dockerfile . \
		-t mqtt/broker:latest --progress=plain
