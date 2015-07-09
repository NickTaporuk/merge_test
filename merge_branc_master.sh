#!/bin/sh

#
# Deploying application to frontend and backend servers
#

PROGNAME=`basename $0`
VERSION="Version 0.1"
AUTHOR="2015, Nickolay Kuropatkin (email: nictaporuk@yandex.ru)"






#echo $PROGNAME
UNAME=$(git config --get user.name)
UEMAIL=$(git config --get user.email)
PARAMS="$@ --user.name \"$UNAME\" --user.email $UEMAIL"
BRANCH=$(git branch)
#echo "BRANCH:: $BRANCH"
cat $BRANCH | grep 'test'
#git commit -am'autocommit'
#
#git checkout master
#
#git merge --squash -s subtree --no-commit develop