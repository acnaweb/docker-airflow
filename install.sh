#!/bin/bash

curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.4.3/docker-compose.yaml'

mkdir -p ./dags ./logs ./plugins ./tests
echo -e "AIRFLOW_UID=$(id -u)" > .env


curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.4.3/airflow.sh'
chmod +x airflow.sh
