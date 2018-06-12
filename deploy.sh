#!/usr/bin/env sh
YEAR=$(date +"%Y")
MONTH=$(date +"%m")
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global push.default simple
export GIT_TAG=v1.0.1-$TRAVIS_BUILD_NUMBER
msg="Travis generated build"
echo "$msg" >> $TRAVIS_BUILD_DIR/build.txt
git add $TRAVIS_BUILD_DIR/build.txt
git commit -m "Update build number to $TRAVIS_BUILD_NUMBER"
