#!/bin/bash

grep '\\item' src/pub.tex | grep '%' | cut -d'%' -f2 | sed 's/ //; s/^/recid:/' | tr '\r\n' ' ' | sed 's/  recid:/%20OR%20recid%3A/g' | sed -e 's~^~<meta http-equiv="refresh" content="0; url= https://inspirehep.net/literature?sort=mostrecent\&size=25\&page=1\&ui-citation-summary=true\&q=~' | sed -e 's~[ ]*$~" />~' > inspire
