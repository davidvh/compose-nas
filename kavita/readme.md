# Kavita

Kavita is a lightweight EBook and Comics reader. See https://www.kavitareader.com/

## Setup

Start the compose, making sure that you are pointing to the right folder location for your books. 
On the first startup, Kavita will prompt you to create the first user. 

Once you've logged in, you'll need to add libraries for your books. Kavita does require a specific folder structure for reading books (see https://wiki.kavitareader.com/en/guides/managing-your-files). Generally books must be located in subdirectories. Each subdirectory will be used as the name of the 'Collection' to group the books together. Inside of that collection, books will be grouped alphabetically. 
Additionally, Epub and CBZ files have support for metadata tags. When these tags are present they will be used instead of the folder structure. 

## Additional tools

 - [Sigil](https://sigil-ebook.com/) can be used to edit EPUB files. 
 - Kavita does not support managing files internally, so any uploads/renames/etc. need to be done through an external file manager.

## TODO

 - Authentication via LDAP or OAuth. Currently seems to be not supported, so accounts must be managed separately.