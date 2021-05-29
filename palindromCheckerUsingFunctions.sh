#!/bin/bash -x

#Problem 2: Write a function to check if the two numbers are Palindromes

palindromeFunction()
{
	firstNum=$1
	secondNum=$2
	rev=0
	tmp=0

	while [ $secondNum -gt 0 ]
	do
		tmp=`expr $secondNum % 10`
		rev=`expr $rev \* 10 + $tmp`
		secondNum=`expr $secondNum / 10`
	done
	#echo "reverse no is $rev"
	if [ $firstNum -eq $rev ]
	then
		echo "$firstNum is a Palindrome"
	else
		echo "$firstNum is not a Palindrome"
	fi
}
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2
palindromeFunction $num1 $num2
