# Airflow + code-server in Docker

## Description

Spins up a Docker stack containing Airflow + code-server (the latter for editing dags).

## Usage

To spin up the stack:

```
make up
```

Wait a few moments for the scheduler + webserver to start up after the airflow-init service has finished running.

Afterwards, you should be able to reach the following services:

* Airflow (http://localhost:8080, credentials: airflow/airflow)
* Code-server (http://localhost:8081, no password)
* Jupyter with code-server integration (http://localhost:8888, password: airflow)

To tear everything down:

```
make down
```