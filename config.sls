# Set the NGINX configurations where the configurations are maintained for Ports, Permissions and so on.

nginx_configuration:
  file.managed:                                     # Use this module in order to work with files
    - name: /etc/nginx/nginx.conf                   # The file on Salt Minions (RedHat Systems)
    - source: salt://nginx/config/nginx.conf        # The salt:// points to the local system which the root dir /srv/salt
    - require:
      - pkg: nginx                                  # To be safe. Making sure that the service is already present on minion before making the conf file changes

