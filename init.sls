# Install NGINX package and make sure the service is running

include:
  - nginx.epel              # This will include our epel.sls before running this state

install_nginx:
  - pkg.installed:
    - name: nginx           # Installs the NGINX Package
  - service.running:
    - name: nginx           
    - enable: true