#!/bin/bash -
#===============================================================================
#
#          FILE: fourLoops.sh
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

#Define array
teams="Yankees Dodgers RedSoxs"

for team in $teams
do
    echo "I really like $team yeah"
done

# Task: Ask user to enter favorite teams: space seperated, then, crreate
# a function and display one by one. 

list_teams()
{
    # Number of params is $#
    # String of all params $*
    for team in $*
    do
        echo "(inside function): I really like $team yeah"
    done
}

echo -ne  "Please enter your favorite teams: "
read favTeams

# Call function with params
list_teams $favTeams



exit 0
