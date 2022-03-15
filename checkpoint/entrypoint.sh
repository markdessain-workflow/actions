#!/bin/sh -l

cd $GITHUB_WORKSPACE

FILE=$2.checkpoint
if [ ! -f "$FILE" ]; then
    echo "1" > $2.checkpoint
fi

START_TIME=$(date -r $2.checkpoint)

OLD_NUM=$(cat $2.checkpoint)
NEW_NUM=$(expr $OLD_NUM + 1)

echo "$NEW_NUM" > $2.checkpoint

END_TIME=$(date -r $2.checkpoint)

echo "::set-output name=start_time::$START_TIME"
echo "::set-output name=end_time::$END_TIME"
