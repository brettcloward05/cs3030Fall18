#!/bin/bash -
#===============================================================================
#
#          FILE: bkFiles.sh
#
#         USAGE: ./bkFiles.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 01:51:51 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# get all files with the .txt extension
for file in `ls *.txt*`
do 
    bk=` ls $file | cut -d '.' -f 3 `
    # If names have .bk already do not rename
    if [[ $bk == "bk" ]]
    then    
        echo "Moving $file to data/${file}"
        mv $file data/${file}
    else
        #rename them
        echo "Moving $file to data/${file}.bk"
        mv $file data/${file}.bk
fi

done

exit 0
