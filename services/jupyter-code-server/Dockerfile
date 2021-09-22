FROM jupyter/minimal-notebook:lab-3.1.12

ARG CODE_SERVER_VERSION=3.12.0

USER root

# Install code-server + pre-requisites
RUN apt-get update && apt-get install -yq --no-install-recommends \
    curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -fOL https://github.com/cdr/code-server/releases/download/v${CODE_SERVER_VERSION}/code-server_${CODE_SERVER_VERSION}_amd64.deb \
    && dpkg -i code-server_${CODE_SERVER_VERSION}_amd64.deb \
    && rm code-server_${CODE_SERVER_VERSION}_amd64.deb

USER $NB_UID

# Install Jupyter proxy plugins
COPY jupyter_codeserver_proxy /tmp/jupyter_codeserver_proxy

RUN conda install --quiet --yes \
    'jupyter-server-proxy' && \
    jupyter labextension install @jupyterlab/server-proxy && \
    pip install --quiet --no-cache-dir /tmp/jupyter_codeserver_proxy && \
    jupyter lab clean -y && \
    npm cache clean --force && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Set default working directories
ENV CODE_WORKINGDIR=$HOME
WORKDIR $HOME

# Set fixed password (airflow)
COPY jupyter_server_config.json /home/jovyan/.jupyter/jupyter_server_config.json
