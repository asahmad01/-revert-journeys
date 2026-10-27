#!/bin/sh
# Copies the page into site/ (the folder you upload to Netlify) and zips it.
set -e
cd "$(dirname "$0")"
mkdir -p site
cp "Revert Journeys.dc.html" site/index.html
cp support.js site/
rm -f revert-journeys-netlify.zip
(cd site && zip -qr ../revert-journeys-netlify.zip .)
echo "site/ updated, revert-journeys-netlify.zip ready"
