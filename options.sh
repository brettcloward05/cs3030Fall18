#!/bin/bash -
#===============================================================================
#
#          FILE: options.sh
#
#         USAGE: ./options.sh
#
#   DESCRIPTION: Learn how to use getopts
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 03:06:38 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

c="-c $2 -f $4"

while getopts ":$c:h:" argv;
do
    case $argv in
        c)
            echo "Working on function"
            ;;

        h) echo "This will be your help function"
            ;;

        #if you want to test for ? use \?

        \?) echo "Usage: hw2.sh [-c customerDataFolder] [-f dataFile]"
            echo "Both arguments are required"
            ;;

        *) echo "An unexpected parsing error occured"
            exit 2
            ;;
    esac

done
