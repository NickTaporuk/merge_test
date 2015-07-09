#!/bin/sh

#
# Deploying application to frontend and backend servers
#

PROGNAME=`basename $0`
VERSION="Version 0.1"
AUTHOR="2015, Nickolay Kuropatkin (email: nictaporuk@yandex.ru)"
#
git checkout master
#
git merge --squash -s subtree --no-commit develop