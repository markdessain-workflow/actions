#!/bin/sh -l

echo $1 > .github_token
/bin/gh auth login --with-token < .github_token

mkdir /repo
cd /repo

printenv

gh repo clone $GITHUB_REPOSITORY_OWNER/$GITHUB_REPOSITORY
git checkout run-metadata

FILE=/etc/resolv.conf
if [ ! -f "$FILE" ]; then
    echo "1\n" > $2.checkpoint
fi

START_DATE=$(date -r $2.checkpoint)

NEW=$(expr $(cat $2.checkpoint) + 1)
echo "$NEW\n" > $GITHUB_WORKSPACE/$2.checkpoint

END_DATE=$(date -r $2.checkpoint)

echo "::set-output name=start_date::$START_DATE"
echo "::set-output name=end_date::$END_DATE"
