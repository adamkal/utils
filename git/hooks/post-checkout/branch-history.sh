#! /bin/bash

# This hook will log all branches you've been working on
# recently and save it to ~/.git-branch-history


HIST_FILE=$HOME/.git-branch-history
TMP_FILE=$(mktemp)
BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
echo "$BRANCH_NAME" >> $HIST_FILE
cat $HIST_FILE | uniq > $TMP_FILE
cp $TMP_FILE $HIST_FILE 

