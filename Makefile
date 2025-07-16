
.PHONY: help build run down destroy stop restart ps migrate makemigrations run_all

help:
	@echo "Available commands:"
	@echo "  build             - Build the Docker images"
	@echo "  up                - Start all containers in detached mode"
	@echo "  down              - Stop and remove containers"
	@echo "  destroy           - Stop and remove containers, networks, volumes"
	@echo "  stop              - Stop running containers"
	@echo "  restart           - Restart containers"
	@echo "  ps                - List containers"
	@echo "  migrate           - Run Alembic migrations"
	@echo "  makemigrations    - Create new Alembic migrations"
	@echo "  run               - Run Flask application locally"

run_all:
	docker-compose up --build

build:
	docker-compose build

run:
	python3 manage.py runserver

down:
	docker-compose down

destroy:
	docker-compose down -v

stop:
	docker-compose stop

restart:
	docker-compose restart

ps:
	docker-compose ps

migrate:
	python3 manage.py migrate

makemigrations:
	python3 manage.py makemigrations

