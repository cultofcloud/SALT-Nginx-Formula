#Since the Config file will be updated, it is necessary to restart the NGINX service for the changes to take effect

nginx_restart:
  module.wait:                  
  - name: service.restart       # This specifies to restart the service
  - m_name: nginx               # Apache 2 service to be restarted when --
  - watch:
    - nginx_configuration       # -- there is change to the nginx_configuration state in config.sls