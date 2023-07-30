# Infra projects

Infra contains several services which provide a basic infrastructure for other services to build on. 

## Setup

Start the compose. 
On the first startup, LLDAP will prompt you to create the first user. 

## Services

### Dashy

Dashy is a landing page that organizes links to other services. This allows you record and link to all of the services that are provided by compose-nas. 

### Caddy

Caddy provides routing to backend services as well as SSL encryption and connecting to Authelia for authentication. New services that present web frontends should connect to the `compose-nas` network and be added to one of the Caddyfiles. `Caddyfile` exposes services on port 443 while `InternalCaddyfile` exposes service on port 8443, which allows the router to expose some services publicly while leaving other services available on the internal network. 

### LLDAP

LLDAP is a simplified LDAP server. 

### Authelia

Authelia provides OIDC and proxy authentication and authorization. It supports LLDAP as a backend for reading users. 