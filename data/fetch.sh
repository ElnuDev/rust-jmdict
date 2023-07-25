#!/usr/bin/env bash

# https://www.edrdg.org/wiki/index.php/JMdict-EDICT_Dictionary_Project#CURRENT_VERSION_&_DOWNLOAD
wget http://ftp.edrdg.org/pub/Nihongo/JMdict.gz

# Extract and delete archive
gzip -d JMdict.gz

# Add XML extension
mv JMdict JMdict.xml
