#!/bin/bash -x

echo "Enter the First Name:"
read fName

fNamePattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $fName =~ $fNamePattern ]]
then
       echo "Valid First name"
else
       echo "Invalid First name-It must contain first letter capital and minimum 3 letters "
fi
