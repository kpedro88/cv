#!/bin/bash

grep '\\item' src/pub.tex | grep '%' | cut -d'%' -f2 | sed 's/ //; s/^/recid:/' | tr '\r\n' ' ' | sed 's/  recid:/%20OR%20recid%3A/g' | sed -e 's~^~RedirectMatch 302 ^/kjp/cv/inspire$ https://inspirehep.net/literature?sort=mostrecent\&size=25\&page=1\&ui-citation-summary=true\&q=~' > .htaccess
