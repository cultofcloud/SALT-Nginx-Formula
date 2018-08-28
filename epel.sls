#This state file is used to check for the EPEL releases (Extra Package for Enterprise Linux)

add_epel:
  pkg.installed:
    - name: epel-release        # This will install the latest epel packages