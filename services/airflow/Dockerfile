FROM apache/airflow:2.1.3-python3.9

RUN python -m pip install apache-airflow-providers-http==2.0.1 apache-airflow-providers-postgres==2.2.0
COPY dags /tmp/staging/dags
