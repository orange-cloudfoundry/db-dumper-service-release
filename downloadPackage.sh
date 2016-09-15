#!/bin/sh
LATEST_RELEASE_URL=$(curl -s https://api.github.com/repos/orange-cloudfoundry/db-dumper-service/releases/latest | grep browser_download_url | head -n 1 | cut -d '"' -f 4)
echo "Downloading $LATEST_RELEASE_URL"
curl -O -L $LATEST_RELEASE_URL
