#!/bin/bash

PROJECT_NAME=$1
if [ "$PROJECT_NAME" == "" ]
then
    PROJECT_NAME="project"
fi

cd /work/result
mkdir -p $PROJECT_NAME-git
cd $PROJECT_NAME-git
git init
#avoid having unexpected issue:
git config core.ignoreCase false

/usr/local/src/fast-export/hg-fast-export.sh -r /work/$PROJECT_NAME

git checkout HEAD

bash
