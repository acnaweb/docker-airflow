install:
	chmod +x /scripts/install.sh
	/scripts/install.sh

init:
	docker compose up airflow-init

clean:
	docker-compose down --volumes --remove-orphans

clean_up:
	docker-compose down --volumes --rmi all
	chmod +x ./scripts/remove.sh
	./scripts/remove.sh

run:
	docker-compose up

down:
	docker-compose down

