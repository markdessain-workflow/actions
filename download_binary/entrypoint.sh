#!/bin/sh -l

echo $INPUT_TOKEN > .github_token
/bin/gh auth login --with-token < .github_token

cd $GITHUB_WORKSPACE

mkdir -p $2
rm -rf $2/$1

/bin/gh run download --name $1 --dir $2
chmod +x $2/$1

echo "::set-output name=binary::$2/$1"
