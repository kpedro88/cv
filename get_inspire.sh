#!/bin/bash

grep '\item' src/pub.tex | grep '%' | cut -d'%' -f2 | sed 's/ //; s/^/recid:/' | tr '\r\n' ' ' | sed 's/  recid:/ OR recid:/g'
