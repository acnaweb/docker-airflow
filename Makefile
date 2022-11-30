install:
	chmod +x install.sh
	./install.sh

init:
	docker compose up airflow-init

clean:
	docker-compose down --volumes --remove-orphans

clean_up:
	docker-compose down --volumes --rmi all

run:
	docker-compose up

down:
	docker-compose down

