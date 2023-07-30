# Paperless-NGX

A tool for storing scanned documents, including search capabilities. 

## Setup

Modify the compose to expose port 8000. Start the compose. 
Paperless uses a default logic admin:admin (see https://hub.docker.com/r/linuxserver/paperless-ngx). After logging in as an administrator, add one of the infra accounts as an admin. 
Revert the compose to not expose the port, then update. 

Paperless will now trust Authelia to provide it with the logged in user name for authentication. Users still need to be added to Paperless by an administrator account, otherwise they will not have permission to anything. 

## Additional tools

 - Files can be manually uploaded to Paperless-NGX through the UI, but for a better experience you can configure a document scanner to upload files to a share location (e.g. via FTP) that Paperless monitors. 