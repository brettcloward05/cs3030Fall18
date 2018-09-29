#!/bin/bash -
#===============================================================================
#
#          FILE: forLoops.sh
#
#         USAGE: ./fourLoops.sh
#
#   DESCRIPTION: Practive For Loops
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 02:20:06 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

for team in Yankees Dodgers RedSoxs
do
    echo "I really like ${team}"
done

echo "Wow your teams are great!"

exit 0
