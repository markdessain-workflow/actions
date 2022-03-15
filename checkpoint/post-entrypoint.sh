#!/bin/sh -l

cd $GITHUB_WORKSPACE

git add $2.checkpoint
git commit -m "updating $2.checkpoint"
git push