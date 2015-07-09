#!/bin/sh
#1 проверить ветку
#2 git pull commit push
#3 перейти в мастер
#4 git pull
#
#

#####################################################################
#
#
#
#####################################################################

PROGNAME=`basename $0`
VERSION="Version 0.1"
AUTHOR="2015, Nickolay Kuropatkin (email: nictaporuk@yandex.ru)"
# its work git merge --squash -s subtree --no-commit name_branch
#echo $PROGNAME
#UNAME=$(git config --get user.name)
#UEMAIL=$(git config --get user.email)
#PARAMS="$@ --user.name \"$UNAME\" --user.email $UEMAIL"

read -p "Enter merge branch :" MERGE_BRANCH
BRANCH=$(git branch)
NAME_BRANCH=$(echo "$BRANCH" | grep -i '\*' | sed '{s/\*// ; /^$/d}')
echo "$MERGE_BRANCH::$NAME_BRANCH"
#git commit -am'autocommit'
#git checkout master
#
#git merge --squash -s subtree --no-commit develop

while true ; do
        case "$BRANCH" in
                'master')
                echo $"`basename $0` 0.3"
                exit 0
                shift

                ;;

                'develop')
                echo $"`basename $0` 0.3"
                exit 0
                shift

                ;;
            *)
            break
;;

        esac
done