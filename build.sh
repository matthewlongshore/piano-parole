#!/bin/sh
# Makes parole.html (the GitHub Pages copy) from ../piano-parole.html, adding the page header the Claude viewer normally adds.
cd "$(dirname "$0")"
[ -f ../piano-parole.html ] || { echo "Missing ../piano-parole.html - nothing changed."; exit 1; }
{ printf '<!doctype html>\n<html lang="en">\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'; cat ../piano-parole.html; printf '\n</html>\n'; } > parole.html
