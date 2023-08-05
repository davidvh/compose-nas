# Bookstack

A basic wiki service.

## Setup

1. Start the compose.
2. Log in with one of the LDAP accounts. You will have read-only permissions.
3. Temporarily edit compose.yml to set `AUTH_METHOD=standard`.
4. Start the compose.
5. Log in to Bookstack using the default login credentials.
6. Change the default password.
7. Update one of the LDAP accounts to be an Admin.
8. Revert the compose.yml change and re-run the deployment to configure LDAP access.
