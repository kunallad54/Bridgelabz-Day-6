#! /bin/bash -x

#Problem 3: Take a number from user and check if the number is a Prime then show that its palindrome is also prime
#	 a. Write function check if number is Prime
#	 b. Write function to get the Palindrome.
#	 c. Check if the Palindrome number is also prime


echo "Enter the number: "
read num
flag=1
palindromeCheck()
{
	firstNum=$1
        rev=0
        tmp=0

        while [ $firstNum -gt 0 ]
        do
                tmp=`expr $firstNum % 10`
                rev=`expr $rev \* 10 + $tmp`
                firstNum=`expr $firstNum / 10`
        done
	echo "The palindrome number is $rev"
	primeCheck $rev
}

function primeCheck
{
        number=$1
        count=0
        for (( i=1;i<=$number;i++ ))
        do
                a=$((number % i))
                if [ $a -eq 0 ]
                then
                        count=$(($count + 1))
                fi
        done
        if [ $count -eq 2 ]
        then
                echo "The $number is a prime number"
		if [ $flag -eq 1 ]
		then
			palindromeCheck $number
			flag=0
		fi
        else
                echo "The $number is not a prime number"
        fi
	return $number
}
primeCheck $num


