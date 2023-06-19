#!/bin/sh

export USER="ByeonJungHun"
export GITKEY="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"
add test
export REPO=$1

echo ${REPO/\/\//\/\/$USER:$GITKEY@}
git clone ${REPO/\/\//\/\/$USER:$GITKEY@}
