#!/bin/bash

# Standard tools for building Linux packages:
SNAP=snapcraft

if ! [ -x "$(command -v ${SNAP})" ]; then
  echo
  echo "${SNAP} is required but not installed,"
  echo "for more information please visit:"
  echo "https://docs.snapcraft.io/build-snaps"
  echo

  exit 1
fi

echo
echo "Building Linux package, please wait..."
echo
${SNAP}
