#! /usr/bin/bash

# ECHO COMMAND
# echo Hello World!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
NAME="Fabianos"
#echo "My name is $NAME"
# echo "My name is ${NAME}"

#USER INPUT
# read -p "Enter your name: " INPUTNAME
# echo "Hello $INPUTNAME, nice to meet you!"

#CONDITIONALS
#SIMPLE IF STATEMENT
# if [ "$NAME"=="Fabiano" ]
# then
#   echo "Your name is Fabiano"
# fi

#IF-ELSE
# if [ "$NAME" == "Fabiano" ]
# then
#   echo "Your name is Fabiano"
# else 
#   echo "Your name is NOT Fabiano"
# fi

#ELSE-IF (elif)
# if [ "$NAME" == "Fabiano" ]
# then
#   echo "Your name is Fabiano"
# elif [ "$NAME" == "Julian" ]
# then
#   echo "Your name is Julian"
# else
#   echo "Your name is NOT Fabiano or Julian"
# fi

#COMPARISONS
############################################################################
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if the value1 is greater than val2
# val1 -ge val2 Returns true if the value1 is greater than or equal to val2
# val2 -lt val2 Returns true if val2 is less than val2
# val2 -le val2 Returns true if val2 is less than or equal to val2
############################################################################

# NUM1=31
# NUM2=5
# if [ "$NUM1" -gt "$NUM2" ]
# then
#   echo "$NUM1 is bigger than $NUM2"
# else
#   echo "$NUM1 is less than $NUM2"
# fi

#FILE CONDITIONS

#########################################################################################################
# -d file   True if the file is a directory
# -e file   True if the file exists (note tha this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -u file   True if the user id is set on a file
# -w file   True if the file is writable
# -x file   True if the file is executable
#########################################################################################################
# FILE="myscript.sh"
# if  [ -u "$FILE" ]
# then
#   echo "$FILE is a file"
# else
#   echo "$FILE is not a file"
# fi

#CASE STATEMENTS
# read -p "Are you 21 or over? Y/N" ANSWER
# case "$ANSWER" in 
#   [yY] | [yY][eE][sS])
#     echo "You can have a beer :)"
#     ;;
#   [nN] | [nN][oO])
#     echo "Sorry, no drinking"
#     ;;
#   *)
#     echo "Please enter y/yes or n/no"
# esac

#SIMPLE FOR LOOP
# NAMES="Fabiano Julian Matt Gino Mark"
# for NAME in $NAMES
#   do 
#     echo "Hello $NAME"
# done

# FILES=$(ls)
# for FILE in $FILES
#   do
#     echo "Calculating sha256 checksum for $FILE"
#     echo "Sha256 checksum is $(sha256sum $FILE)" >> sums.txt
# done

#FOR LOOP CREATE FILES WITH CHECKSUMS AND STAMP
# FILES=$(ls | grep '^[^check]')
# for FILE in $FILES
#   do
#     echo "Creating checksumfile for $FILE"
#       echo $((sha256sum $FILE) | cut -d' ' -f 1 ) -  $(date)>> check-$FILE.txt
# done

#WHILE LOOP -  READ THROUGH A FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
#   do
#     echo "$LINE: $CURRENT_LINE"
#     ((LINE++))
# done < "./test.txt"

#FUNCTION
# function sayHello(){
#   echo "Hello World"
# }
# sayHello

#FUNCTION WITH PARAMS
# function greet(){
#   echo "Hello, $1 and I am $2"
# }

# greet "Fabiano" "39"

#CREATE FOLDER AND WRITE TO A FILE
function createhello(){
mkdir Hello
touch "hello/world.txt"
echo "Hello World" >> hello/world.txt
echo "Created hello/world.txt"
}

createhello

function createchecksum(){
  FILES=$(ls | grep '^[^check]')
for FILE in $FILES
  do
    echo "Creating checksumfile for $FILE"
      echo $((sha256sum $FILE) | cut -d' ' -f 1 ) -  $(date)>> check-$FILE.txt
done

}

createchecksum