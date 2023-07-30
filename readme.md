# Compose-NAS

Compose-NAS is an effort to create a NAS system that is controlled through docker-compose systems. It should be mostly agnostic to the system that docker is running on. 

## Operations

### Deploy/update a service

`update.sh <service>` will execute `docker-compose up` for one of the subfolders. It will also remove any orphaned resources. 
Usually this is the only action needed, though in some cases it may be necessary to manually restart one of the docker containers to force them to refresh their data.

### Remove a service

`edc.sh down -v --remove-orphans` executed from one of the subfolders will stop the services and remove the orphaned resources. This should be executed before the compose folder is deleted. 
TODO: Need to improve this management. 

## Practices

Although this can be run on any system that supports docker-compose, there are some best practices to ensure that they system runs safely. 

### Secrets

Secrets are added to `/etc/compose.env`. This file should not be shared, but it should be backed up. I suggest uploading it to a password manager such as BitWarden as a secure note.

### Configurations

Several services use configuration files in various formats. Where possible these configurations should be checked in as templates and generated at deploy time by the make_template scripts. 

### Storage

Many docker containers rely on storage for different reasons. Compose-NAS is based on storage in two different locations: `/var/lib/docker/volumes` and `/mnt/media`. Docker volumes are used to store system data such as databases and config files. `/mnt/media` is used to store user files, which may include music, videos, books, etc. 

#### Backups

To support backups, the storage locations should be backed up regularly. ZFS should be used as the filesystem to support snapshots. 
TODO: more details about backup software and location decisions. 