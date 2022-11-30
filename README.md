### Running Airflow in Docker
https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html


### Pre-req
Docker & Docker Compose - https://docs.docker.com/compose/install/


### Fetching docker-compose.yaml
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.4.3/docker-compose.yaml'

docker-compose.yaml: add Volume
'''
  volumes:
    - ./tests:/opt/airflow/tests
'''

### Login
user: airflow 
password: airflow


### Running the CLI commands
./airflow.sh info
./airflow.sh bash
./airflow.sh python

### Web Interface
http://localhost:8080


###  Sending requests to the REST API

'''
ENDPOINT_URL="http://localhost:8080/"
curl -X GET  \
    --user "airflow:airflow" \
    "${ENDPOINT_URL}/api/v1/pools"
'''    

### Docker 
https://www.geeksforgeeks.org/remove-all-containers-and-images-in-docker/

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images -q)
