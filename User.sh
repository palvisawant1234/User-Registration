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

echo "Enter the Last Name:"
read lName

lNamePattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $lName =~ $lNamePattern ]]
then
        echo "Valid Last name"
else
        echo "Invalid Last name-It must contain first letter capital and minimum 3 letters."
fi
