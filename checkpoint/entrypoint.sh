#!/bin/sh -l

cd $GITHUB_WORKSPACE

FILE=$2.checkpoint
if [ ! -f "$FILE" ]; then
    echo "1\n" > $2.checkpoint
fi

START_DATE=$(date -r $2.checkpoint)

NEW=$(expr $(cat $2.checkpoint) + 1)
echo "$NEW\n" > $2.checkpoint

END_DATE=$(date -r $2.checkpoint)

echo "::set-output name=start_date::$START_DATE"
echo "::set-output name=end_date::$END_DATE"
