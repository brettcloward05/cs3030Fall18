#!/bin/bash -
#===============================================================================
#
#          FILE: case.sh
#
#         USAGE: ./case.sh
#
#   DESCRIPTION: Test CASE statements
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:48:39 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo "Enter a value"
read answer

# Case satements use:
# CASE <variable> in
#  Testcondition1) ;;
#  Testcondition2) ;;
#  Testcondition3) ;;
# ESAC

case $answer in 
    "one")
        echo "Answer is one"
        ;;

    "two")
        echo "Answer is two"
        ;;
    "three")
        echo "Answer is three"
        ;;
    #use wild card for "ELSE" case
    *)
        echo "Answer [$answer] is not supported"
        ;;
esac

echo "Done!"
exit 0
