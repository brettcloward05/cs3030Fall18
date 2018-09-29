#!/bin/bash -
#===============================================================================
#
#          FILE: var.sh
#
#         USAGE: ./var.sh
#
#   DESCRIPTION: Learn how to use variables in bash
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 08/29/2018 02:23:57 PM
#      REVISION:  ---
#===============================================================================

# VIM: Delete line command is: dd

# NO spaces after the var name and = sign
Name="Waldo Weber State"

echo "Hi Name"
# Use $ to call variables
echo "Hi $Name"

# Take user inpu
# echo -n : do not insert new linet
echo -n "What is your favorite team?"
# read <VAR> take user input
read Team
echo "Nice, your team $Team is the best!"

# Positional parameters
# $# Total number of input parameters
# $@ list of input parameters
# $1 first input, $2 second input, ,ect
echo "You entered [$#] params to program [$0]"
echo "List of params [$@]"
echo "First is [$1]"
First=$1
echo "First is also [$First]"
echo "Second is [$2]"
echo "Third is [$3]"




exit 0




