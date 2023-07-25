#!/usr/bin/env bash

# https://www.edrdg.org/wiki/index.php/JMdict-EDICT_Dictionary_Project#CURRENT_VERSION_&_DOWNLOAD
wget http://ftp.edrdg.org/pub/Nihongo/JMdict.gz

# Extract and delete archive
gzip -d JMdict.gz

# Get date
date=`grep -m 1 -oE '<!-- JMdict created: [0-9]{4}-[0-9]{2}-[0-9]{2} -->' JMdict.xml | sed -E 's/<!-- JMdict created: (.+) -->/\1/'`

rm JMdict*.xml

# Add XML extension
mv JMdict JMdict-${date}.xml
