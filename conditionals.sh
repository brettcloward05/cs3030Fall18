#!/bin/bash -
#===============================================================================
#
#          FILE: conditionals.sh
#
#         USAGE: ./conditionals.sh
#
#   DESCRIPTION: Learn conditionals in bash: IF, ELSE, CASE
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 08/29/2018 02:57:43 PM
#      REVISION:  ---
#===============================================================================

# Syntax
# if [[ condition ]]
# then            #opening bracket
# ......
# else 
# fi              #closing bracket

echo "Welcome to the super program!"

if [[ "$#" -ne "2"  ]]
then
    # Bad
    echo "Missing input parameters"
    echo "Usage: $0 <param1> <param2>"
    exit 1

fi

echo "Good to go"
echo "done!"

exit 0

