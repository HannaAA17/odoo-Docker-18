#!/bin/bash

# Set Odoo version and release information
ODOO_VERSION="18.0"
ODOO_RELEASE="20250618"

# Download the .deb file
echo "Downloading Odoo ${ODOO_VERSION} (${ODOO_RELEASE})..."
curl -o odoo.deb -sSL "http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb"

echo "✅ Download completed: odoo.deb"
