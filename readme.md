# Airflow + code-server in Docker

## Description

Spins up a Docker stack containing Airflow + code-server (the latter for editing dags).

## Usage

To spin up the stack:

```
make up
```

Wait a few moments for the scheduler + webserver to start up after the airflow-init service has finished running.

Afterwards, you should be able to login to the Airflow interface at http://localhost:8080 (credentials: airflow/airflow). You should also be able to reach the code-server interface at http://localhost:8081.

To tear everything down:

```
make down
```