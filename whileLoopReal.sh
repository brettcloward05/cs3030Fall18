#!/bin/bash -
#===============================================================================
#
#          FILE: whileLoopReal.sh
#
#         USAGE: ./whileLoopReal.sh
#
#   DESCRIPTION: The REAL use of while loops
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 02:24:42 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

filename=$1
if [[ ! -r $filename ]]
then 
    echo "error: Cannot read $filename"
fi

echo "File has the following info: "

#use the read command to read from files
# You can use the list of file(s) at the bottom
# of your while loop as INPUT to the loop
while read myline
do
    echo "$myline"
done < $filename


exit 0
