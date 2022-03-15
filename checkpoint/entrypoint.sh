#!/bin/sh -l

cd $GITHUB_WORKSPACE

FILE=$2.checkpoint
if [ ! -f "$FILE" ]; then
    date +%s > $2.checkpoint
fi

START_TIME=$(cat $2.checkpoint)
END_TIME=$(date +%s)

echo $END_TIME > $2.checkpoint

echo "::set-output name=start_time::$START_TIME"
echo "::set-output name=end_time::$END_TIME"
