#!/bin/sh -l

cd $GITHUB_WORKSPACE

git config --global user.email "robot@markdessain.com"
git config --global user.name "Robot"
git add $2.checkpoint
git commit -m "updating $2.checkpoint"
git push