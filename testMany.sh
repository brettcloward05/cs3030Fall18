#!/bin/bash -
#===============================================================================
#
#          FILE: testMany.sh
#
#         USAGE: ./testMany.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:31:36 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

#1) if $1 equal YES, print something
if [[ "$1" == "YES" ]]
then 
    echo "You go it! -YES"

#2) if $1 equals NO, print something
elif [[ "$1" == "NO" ]]
then
    echo "NO WAY. -NO"

#3) If $1 equals MAYBE, print something
elif [[ "$1" == "MAYBE" ]]
then
    echo "Okay Maybe"

#4) Else pring "not supported"
else 
    echo "I don't know this option [$1]"
fi

echo "Done!"
