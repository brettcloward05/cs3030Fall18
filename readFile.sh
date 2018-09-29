#!/bin/bash -
#===============================================================================
#
#          FILE: readFile.sh
#
#         USAGE: ./readFile.sh
#
#   DESCRIPTION: Read information from file. Parse records based on 
#                delimiter
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/24/2018 02:26:34 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# IFS will set the record separator
# read command will read parsed fields
# in this case: user pass userId ... are local variables
while IFS=: read user pass userId groupId xxx home shell
do
    echo $user

done < passwd
