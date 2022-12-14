# Docker Apache

### Pre-req

Docker & Docker Compose - https://docs.docker.com/compose/install/

### Running Airflow in Docker

https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html

## Setup

### Install

```
make install
make init
```

## Usage

### Run Airflow

```
make run
```

### Running the CLI commands


- Airflow Info
```
./airflow.sh info
```

- Container Bash
```
./airflow.sh bash
```

- Container Python
```
./airflow.sh python
```

### Unit Tests (Pytest)

```
./airflow.sh bash
pip install pytest
pytest
```

### Web Interface

http://localhost:8080

* user: airflow 
* password: airflow

###  Sending requests to the REST API

```
ENDPOINT_URL="http://localhost:8080/"
curl -X GET  \
    --user "airflow:airflow" \
    "${ENDPOINT_URL}/api/v1/pools"
```    

## Uninstall

### Remove all

```
make clean_up
```

## Utils

### Docker

https://www.geeksforgeeks.org/remove-all-containers-and-images-in-docker/

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
