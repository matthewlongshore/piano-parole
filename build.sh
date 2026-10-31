#!/bin/sh
# Makes index.html (the GitHub Pages copy) from ../piano-parole.html, adding the page header the Claude viewer normally adds.
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en">\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'; cat ../piano-parole.html; printf '\n</html>\n'; } > index.html
