#!/bin/sh

export USER="ByeonJungHun"
export GITKEY=""
export REPO=$1

echo ${REPO/\/\//\/\/$USER:$GITKEY@}
git clone ${REPO/\/\//\/\/$USER:$GITKEY@}
