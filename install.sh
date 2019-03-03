#!/bin/bash

RED='\033[31m'
BLUE='\033[34m'
GREEN='\033[32m'

# Install extensions by reading names from extensions.txt file
echo -e "${BLUE}Reading list from extensions.txt file"

while read p; do
  echo -e ${BLUE}Installing "$p"
  code --install-extension $p
done <extensions.txt

echo -e "${GREEN}Extensions Installed"

