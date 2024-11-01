ARG REGISTRY=quay.io
ARG OWNER=jupyter
ARG BASE_IMAGE=${REGISTRY}/${OWNER}/scipy-notebook
FROM ${BASE_IMAGE}

RUN pip install dataprep Polars plotly python-dateutil
RUN pip install optuna keras
RUN pip install mecab-python3 undic-lite
RUN pip install python-docx pypdf
RUN pip install Alembic psycopg sqlmodel
RUN pip install requests pyyaml pytest boto3 python-dotenv
RUN pip install jupytext jupyterlab-lsp python-lsp-server
RUN pip install mip japanize-matplotlib opencv-contrib-python-headless

CMD ["jupyterhub-singleuser", "--allow-root"]
