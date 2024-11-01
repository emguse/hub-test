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

