#!/bin/sh

export USER="ByeonJungHun"
export GITKEY=""
add test
export REPO=$1

echo ${REPO/\/\//\/\/$USER:$GITKEY@}
git clone ${REPO/\/\//\/\/$USER:$GITKEY@}
