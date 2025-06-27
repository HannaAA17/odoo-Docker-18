#!/bin/bash

echo "Fetching Odoo Enterprise..."

# Check if ODOO_SECRET_CODE is set
if [ -z "$ODOO_SECRET_CODE" ]; then
  echo "❌ ODOO_SECRET_CODE is not set"
  exit 1
fi

# Get the HTML from the download page
html=$(curl -s "https://www.odoo.com/thanks/download?code=${ODOO_SECRET_CODE}&platform_version=deb_18e")

# Extract the download URL from the HTML
download_url=$(echo "$html" | grep -oP 'https://download\.odoocdn\.com/download/[0-9a-z]+/deb\?payload=[A-Za-z0-9+=._%-]+' | head -n 1)

# Check if the download URL was found
if [ -z "$download_url" ]; then
  echo "❌ Invalid download URL"
  exit 1
fi

# Download the .deb file
curl -L -o odoo.deb "$download_url"
