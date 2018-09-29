#!/bin/bash -
#===============================================================================
#
#          FILE: brett_cloward_hw1.sh
#
#         USAGE: ./brett_cloward_hw1.sh
#
#   DESCRIPTION: HW Assignment 1
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Cloward (bcloward), brettcloward@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/07/2018 02:18:43 AM
#      REVISION:  ---
#===============================================================================

#set -o nounset                                  # Treat unset variables as an error

# If the user does not enter --help as the first parameter then run the
# normal script. 
if [[ $1 != "--help" ]]
then
#Print a welcome message with your information and the machine name ($HOSTNAME)
echo "Welcome to my first script for CS3030"
echo "My name is Brett Cloward"
echo "You are running this script in $HOSTNAME"

#Print the optins the user can choose from
echo "This script can do three things: "
echo "1. Check to see if the user is the root user"
echo "2. Check to see if the script is running on Linux OS"
echo "3. Check to see if the -w argument was given"
echo "What would you like to do? (1,2,3): "
#Read in the users input
read option


#1. Verify who the user is and display a message acknowledging them. In the 
#   case where the user input option 1 check the *UID* to see if it's a 0.
#   If the UID is a 0 then the user is root. Otherwise they are not root. 
case $option in
   "1")
       case $UID in
            "0")
                echo "The user is root"
           ;;

             *)
                 echo "You are not the root user, your user account is: $USER"
         esac
       ;;
esac


#2. Check if the script is running on a Linux OS. If user inputs option 2
#   then display the OS using *uname -s*.
 if [[ "$option" -eq "2" ]]
 then
    os=`uname -s`
    echo "The script is running on $os"
 fi


#3. Check if the -w argument was given as the first argument AND if
#   option 3 was entered. If -w AND 3 were entered then check for a second
#   argument. If there is a second argument print it three times. If not,
#   then print a message informing the user. 
if [[ $1 = "-w" ]] && [[ "$option" -eq "3" ]]
then 
    if [[ "$#" -eq "2" ]]
        then 
            echo "Printing the second argument three times:"
            echo $2 $2 $2
    else
            echo "Sorry, you forgot to pass a second argument to the -w option"
    fi
fi

#end of main function
fi

# Provide a help option.
if [[ $1 = "--help" ]]
then
main()
{
    if [[ $1 == "--help" ]]
    then
        helpFunction        
    fi
}

helpFunction()
{
    echo "Usage $0 [--help][-w]"
    echo "--help Print this help message"
    echo "-w Print name three times"
    echo "With no arguments it provides a menu to test the sysetm"
}

input=$1
main $input

fi


echo "Exiting program now"
exit 0
