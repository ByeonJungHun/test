#!/bin/sh

export USER="ByeonJungHun"
export GITKEY="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"
export REPO=$1

echo ${REPO/\/\//\/\/$USER:$GITKEY@}
git clone ${REPO/\/\//\/\/$USER:$GITKEY@}
