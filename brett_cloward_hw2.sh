#!/bin/bash -
#===============================================================================
#
#          FILE: brett_cloward_hw2.sh
#
#         USAGE: brett_cloward_hw2.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/18/2018 03:37:41 AM
#      REVISION:  ---
#===============================================================================

#set -o nounset                                  # Treat unset variables as an error

c="-c $2 -f $4"

if [[ $2 = "--help" ]]
then
    echo "Usage: $0 [-c customerDataFolder] [-f dataFile]"
    echo "Both arguments are required"
fi

while getopts ":$c" argv;
do
    case $argv in

        c)
            echo "Working on $PWD"
            echo "Checking for data structure"

            # Check to see if the directroy ($2) exists. If not, create it and
            # create subfolders inside numbered up to 12 for the months.
            if [[ ! -d $2 ]]
            then 
                echo "Customer $2 folder is missing"
                echo "Creating folder"
                `mkdir $2`

                # create 12 subfolders for the months of the year
                many=12
                for num in `seq $many`
                    do
                        `mkdir ~/$2/${num}`
                done
            fi

            # If the file structure does exist then connect to the customer server 
            # and retrive the specified file
            if [[ -d $2 ]]
            then
                echo "Getting file from customer folder"
                scp bc73696@icarus.cs.weber.edu:/home/hvalle/submit/cs3030/files/$4 $PWD

                # Rename the file to include the date, then move it to the directory ($2)
                # and then the corresponding folder that matches the month of the file.
                currentDate=`date +%Y-%-m-%d`
                fileDate=`date +%-m`
                mv $4 $4.${currentDate}
                mv $4.${currentDate} ~/$2/$fileDate
                echo "File located at [$2/$fileDate/$4.${currentDate}]"
            fi

        ;;

        *)
            echo "Usage: $0 [-c customerDataFolder] [-f dataFile]"
            echo "Both arguments are required"
        ;;

    esac
done

exit 0
