#!/bin/sh -l

cd $GITHUB_WORKSPACE

git config --global user.email "mark.dessain@gmail.com"
git config --global user.name "Mark Dessain"
git add $2.checkpoint
git commit -m "updating $2.checkpoint"
git push