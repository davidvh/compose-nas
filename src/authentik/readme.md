# Authentik Setup

See https://goauthentik.io/docs/installation/

## Add new authentication protection

Authentication protection will require login before accessing the protected service, but will not provide any additional authorization support within the service.

1. Create a new Applications > Provider for the service
  - Authorization flow: implicit-consent
  - Forward-auth
  - External host: {url of the service}
2. Create a new Applications > Application
  - Select the recently created Provider
3. Go to Applications > Outposts and edit the 'Proxy' outpost
4. Select the new Application and 'Update'
