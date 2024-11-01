c.JupyterHub.authenticator_class = 'nativeauthenticator.NativeAuthenticator'
c.Authenticator.admin_users = {'admin'}

from jupyter_client.localinterfaces import public_ips
ip = public_ips()[0]
c.JupyterHub.hub_ip = ip

#c.JupyterHub.ssl_key = '/etc/ssl/server.key'
#c.JupyterHub.ssl_cert = '/etc/ssl/server.crt'

c.JupyterHub.spawner_class = 'dockerspawner.DockerSpawner'

c.Spawner.default_url = '/lab'
c.DockerSpawner.default_url = '/lab'

notebook_dir = '/home/jovyan/work'
c.DockerSpawner.notebook_dir = notebook_dir
c.DockerSpawner.volumes = {'jupyterhub-user-{username}': notebook_dir}
c.DockerSpawner.container_image = 'hub/hub1'

c.Authenticator.allowed_users = {'admin', 'user1'}
c.Authenticator.allow_existing_users = True
