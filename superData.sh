#!/bin/bash -
#===============================================================================
#
#          FILE: superData.sh
#
#         USAGE: ./superData.sh
#
#   DESCRIPTION: Create a sequence of 10 files with unique data information
#                inside of them
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 02:47:12 PM
#      REVISION:  ---
#===============================================================================

#set -o nounset                                  # Treat unset variables as an error

# Ask user how many files they need
echo "How many files do you need: "
read many

# Loop to produce files
# seq is a system call, use backticks to call it
for num in `seq $many`
do
    
    # Create unique file names: waldoData#-%d-%m-%Y-%H-%M-%S.txt
    # Use ${VAR} to call var name
    ts=`date +%d-%m-%Y-%H-%M-%S`
    fName="Waldo${num}_${ts}.txt"
    echo "working on $fName"
    #Populate files with "unique data"
    echo "$num information" > $fName
    #Sleep for 2 seconds between file creation
    sleep 2
done

echo "Done producing $many files"

exit 0
