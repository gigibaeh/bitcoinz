#!/bin/bash
./zcutil/build.sh

# tar up the release for disribution
GITTAG=git describe --tags
FILENAME="bitcoinz-${GITTAG}-linux.tar.gz"
PWD=pwd

ECHO "Creating: ${PWD}/${FILENAME}"
tar cvzf "${FILENAME}" src/bitcoinzd src/bitcoinz-cli src/bitcoinz-tx
