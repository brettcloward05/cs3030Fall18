#!/bin/bash -
#===============================================================================
#
#          FILE: helpFunc.sh
#
#         USAGE: ./helpFunc.sh
#
#   DESCRIPTION: Use Functions
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:58:48 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

helpFunction()
{
    echo "Usage $0 <param1>"
    # Here $1 is the input parameter to the FUNCTION
    # NOT the $1 from the program
    echo "Usage $0 <$1>"
}

main()
{
    if [[ $1 == "--help" ]]
then
    #call function
    #all functions must be declared before you use them
    helpFunction "MARIO"
fi
}

#start your program
input=$1
main $input

#catch system calls and capture output to variable use single back ticks
OS=`uname`
echo "You are running in $OS"

echo "Done"
exit 0
