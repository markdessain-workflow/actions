#!/bin/sh -l

cd $GITHUB_WORKSPACE

FILE=$2.checkpoint
if [ ! -f "$FILE" ]; then
    echo "1" > $2.checkpoint
fi

START_DATE=$(date -r $2.checkpoint)

OLD_NUM=$(cat $2.checkpoint)

echo $OLD_NUM

NEW_NUM=$(expr $OLD_NUM + 1)
echo "$NEW_NUM" > $2.checkpoint

END_DATE=$(date -r $2.checkpoint)

echo $START_DATE
echo $END_DATE

echo "::set-output name=start_date::$START_DATE"
echo "::set-output name=end_date::$END_DATE"
