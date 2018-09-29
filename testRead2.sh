#!/bin/bash -
#===============================================================================
#
#          FILE: testRead.sh
#
#         USAGE: ./testRead.sh
#
#   DESCRIPTION: Test if we can open and display th econtent of a file
#                to the screen
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 01:59:51 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

#1) Test to see if you have 1 and only 1 input parameter, exit 1 otherwise

#2) Cat the input parameter, exit 2 otherwise

if [[ "$#" -ne 1 ]]
then 
    echo "Missing input parameter"
    echo "Usage: ./$0 <inputFile>"
    exit 1
fi


#3) test to see if you can read the file with -r
if [[ ! -r $1 ]]
then
    echo "Error: $1 si not a readable file"
    echo "Quitting"
    exit 3
fi
cat "$1"

echo "done"
exit 0
