#!/bin/bash

grep '\item' src/pub.tex | grep '%' | cut -d'%' -f2 | tr '\r\n' ' ' | sed 's/   / OR /g'
