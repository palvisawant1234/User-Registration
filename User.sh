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

echo "Enter the Email ID:"
read email

emailpatt="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+[.]+([a-zA-Z]{2,4})+[.]*([a-zA-Z]{2})*$"

if [[ $email =~ $emailpatt ]]
then
        echo "Valid Email ID"
else
        echo "Invalid Email ID"
fi

echo "Enter your Mobile Number:"
read mob

mobpatt="^[0-9]{2}[ ][0-9]{10}$"

if [[ $mob =~ $mobpatt ]]
then
       echo "Valid Mobile Number"
else
       echo "Invalid Mobile Number"
fi
