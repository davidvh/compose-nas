# Continuous-Deploy

This docker image will build any required files needed and then output a working Docker-Compose project. Included in the output is a deploy.sh script, which will execute each Compose project, remove any unused Compose projects, and perform some system cleanup.

The recommended usage is to create a cronjob on the server which will execute the `deploy.sh` script