#!/bin/bash -x

echo "Enter the First Name:"
read fName

fNamePattern="^([A-Z]{1})[a-z]{2,}$"

if [[ $fName =~ $fNamePattern ]]
then
       echo "Valid First name"
else
       echo "Invalid First name-It must contain first letter capital and minimum 3 letters "
fi

echo "Enter the Last Name:"
read lName

lNamePattern="^([A-Z]{1})[a-z]{2,}$"

if [[ $lName =~ $lNamePattern ]]
then
        echo "Valid Last name"
else
        echo "Invalid Last name-It must contain first letter capital and minimum 3 letters."
fi

echo "Enter the Email ID:"
read email

emailpatt="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z])*@[0-9a-zA-Z]+[.]+([a-zA-Z]{2,4})+[.]*([a-zA-Z]{2})*$"

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

echo "Enter the Password:"
echo "*Password must contain atleast 1 upper case, 1 lower case, 1 numeric and exact 1 special character*"
read password

len="${#password}"
rul1="[0-9a-zA-Z]{1,}"
rul2="[A-Z]{1,}"
rul3="[0-9]{1,}"
rul4="[!@#$%^&*_+-=?<>]{1}"

if [[ $password =~ $rul1 ]] &&  [[ $password =~ $rul2 ]] &&  [[ $password =~ $rul3 ]] &&  [[ $password =~ $rul4 ]] && [[ $len -gt 7 ]] 
then
        echo "Valid Password"
else
        echo "Invalid Password"
fi
