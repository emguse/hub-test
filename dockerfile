ARG REGISTRY=quay.io
ARG OWNER=jupyter
ARG BASE_IMAGE=${REGISTRY}/${OWNER}/scipy-notebook
FROM ${BASE_IMAGE}

RUN conda install Polars plotly python-dateutil
RUN conda install optuna keras
RUN conda install python-docx pypdf
RUN conda install Alembic psycopg sqlmodel
RUN conda install requests pyyaml pytest boto3 python-dotenv
RUN pip install mip japanize-matplotlib opencv-contrib-python-headless
RUN conda install janome

CMD ["jupyterhub-singleuser", "--allow-root"]
