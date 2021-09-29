# FROM ubuntu:20.04
FROM airflow

ARG VERSION=3.12.0

USER root
RUN apt-get update && apt-get install -y curl

RUN curl -fOL https://github.com/cdr/code-server/releases/download/v$VERSION/code-server_${VERSION}_amd64.deb \
    && dpkg -i code-server_${VERSION}_amd64.deb \
    && rm code-server_${VERSION}_amd64.deb

COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint

USER airflow
ENTRYPOINT ["/entrypoint"]

EXPOSE 8081
