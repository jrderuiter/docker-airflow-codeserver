.PHONY: build
build:
	docker build -t jrderuiter/airflow-training services/airflow-training
	docker build -t jrderuiter/airflow-code-server services/airflow-code-server

.PHONY: push
push: build
	docker push jrderuiter/airflow-training
	docker push jrderuiter/airflow-code-server

.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down -v
