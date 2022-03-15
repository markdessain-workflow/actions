#!/bin/sh -l

printenv
echo $1

echo $ACTIONS_RUNTIME_TOKEN > .github_token
/bin/gh auth login --with-token < .github_token

cd $GITHUB_WORKSPACE

mkdir -p $3
rm -rf $3/$2

/bin/gh run download --name $2 --dir $3
chmod +x $3/$2

echo "::set-output name=binary::$3/$2"
