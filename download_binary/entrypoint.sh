#!/bin/sh -l

echo $1 > .github_token
/bin/gh auth login --with-token < .github_token
rm -rf $3
mkdir $3
/bin/gh run download --name $2 --dir ./bin
chmod +x $3/$2

echo "::set-output name=binary::$3/$2"
