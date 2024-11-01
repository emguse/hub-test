```shell

conda create -n jupyterhub312 python=3.12
conda activate jupyterhub312
conda install -c conda-forge jupyterhub
conda install jupyter_client
git clone https://github.com/jupyterhub/nativeauthenticator.git
pip install -e nativeauthenticator/
pip install dockerspawner

sudo docker build -t hub/hub1 .


mkdir ~/jupyterhub
cp jupyterhub_config.py ~/jupyterhub/jupyterhub_config.py
cd ~/jupyterhub

sudo jupyterhub

```

- pip
- docker-7.1.0 dockerspawner-13.0.0 escapism-1.0.1
- cffi-1.15.0 contourpy-1.3.0 cycler-0.12.1 fonttools-4.54.1 japanize-matplotlib-1.1.3 kiwisolver-1.4.7 matplotlib-3.9.2 mip-1.14.2 opencv-contrib-python-headless-4.10.0.84 pillow-11.0.0 pyparsing-3.2.0


RUN conda install jupytext jupyterlab-lsp python-lsp-server


http://SERVER_IP:8000/hub/authorize