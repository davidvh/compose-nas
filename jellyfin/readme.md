# Jellyfin

A website for hosting most media files including video, books, music, and photos. 

## Setup

Start the compose, making sure that you are pointing to the right folder location for your media files. 
On the first startup, Jellyfin will prompt you to create the first user. 

After logging in, you will need to add libraries for your existing media. 

Configure Jellyfin to authenticate via LDAP. This requires a plugin for Jellyfin, which can be installed through the UI. See https://github.com/lldap/lldap/blob/main/example_configs/jellyfin.md for settings.

## Additional tools

 - Jellyfin does not support managing files internally, so any uploads/renames/etc. need to be done through an external file manager.
 - [Handbrake](https://handbrake.fr/) + [MakeMKV](https://www.makemkv.com/) for converting DVDs and BlueRay disks into video files. See also [ARM](https://github.com/automatic-ripping-machine/automatic-ripping-machine).
 - You probably want to play your media remotely. Jellyfin has apps available on most major platforms. 