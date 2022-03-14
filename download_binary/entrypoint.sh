#!/bin/sh -l

echo $1 > .github_token
gh auth login --with-token < .github_token
rm -rf $3
mkdir $3
gh run download --name $2 --dir ./bin
chmod +x $3/$2

echo "::set-output name=binary::$3/$2"
