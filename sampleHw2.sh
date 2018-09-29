#!/bin/bash -
#===============================================================================
#
#          FILE: sampleHw2.sh
#
#         USAGE: ./sampleHw2.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/24/2018 01:48:59 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Set all your variables here
user="bc73696"
server="icarus.cs.weber.edu"
serverFolder="/home/hvalle/submit/cs3030/files/"

# Global variables
have_f=0
have_c=0

# from this point on no hard coded values
UsageFunction()
{
    echo "Usage: $0 [ -c customerDataFolder] [ -f dataFile]"
    echo "Both arguments are required"
    exit 1
}

# check to see if help was called
if [[ $1 == "--help" ]]
then
    UsageFunction
fi


# If you make it here, you have at least the correct number of params,
# now you need to verify they are the correct ones.
while getopts ":f:c:" opt
do
    case $opt in
        f)
            custFile=$OPTARG
            have_f=1
            ;;
        c)
            custFolder=$OPTARG
            have_c=1
            ;;
        ?)
            UsageFunction
            ;;
        *)
            echo "Unsupported option"
            UsageFunction
            ;;
    esac

done

# check for the correct number of arguments
if [[ $have_f -eq 1 && $have_c -eq 1 ]]
then
    echo "Working on $PWD"

    # Check for proprer folder structure, if it doesn't exist then create it
    # Check for the proper month folder in custFolder
    echo "Checking for data structure"
    curMonth=`date +%m`
    custDirectory="$custFolder/$curMonth"

    if [[ ! -d $custDirectory ]]
    then
        echo "customer $custDirectory folder is missing"
        echo "Creating folder"
        # Create customer folder and subfolder with -p option
        `mkdir -p $custDirectory`
    fi

    # Retrive file and put it in proper folder via SCP
    # This requires ssh keys to be set between servers
    # Filename should be appended with the timestamp (YYYY-MM-DD)
    timestamp=`date +%Y-%m-%d`
    echo "Getting file from customer server"
    `scp $user@$server:$serverFolder/$custFile $PWD/$custDirectory/${custFile}.$timestamp`
    echo "File located at $PWD/$custDirectory/${custFile}.$timestamp"   
else
    UsageFunction
fi

exit 0
