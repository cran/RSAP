#!/bin/sh

FLE=`ls RSAP_*.tar.gz`
echo "git push"
git push origin master

echo "removing old package"
ssh piersharding.com rm /home/piers/local-CRAN/src/contrib/RSAP*

echo "sending: $FLE"
scp $FLE piersharding.com:local-CRAN/src/contrib/

echo "updating local-CRAN"
ssh piersharding.com /home/piers/update-local-cran.sh
