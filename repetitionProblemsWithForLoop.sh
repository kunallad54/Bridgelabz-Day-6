#! /bin/bash -x

#Problem 1:Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.

powersOfTwo(){
	echo "Enter the limit: "
	read n
	#echo $((2 ** $n))
	echo "The power of 2 till $n is as follow:- "
	for (( count=0;count<=$n;count ++ ))
	do
		echo $((2 ** $count))
	done
}
powersOfTwo

#Problem 2:Write a program that takes a command-line argument n and prints the nth harmonic number. Harmonic Number is of the form

harmonicForm(){
	echo "Enter the number to get harmonic form :- "
	read num
	for (( i=1;i<=num;i++ ))
	do
		if [ $i -ne $num ]
		then
			echo -n "1/$i" " + "
		else
			echo -n "1/$i"
		fi
	done
}
harmonicForm

#Problem 3: Write a program that takes a input and determines if the number is a prime.

checkPrime(){
	echo "Enter the number you want to check: "
	read number
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
	else
		echo "The $number is not a prime number"
	fi
}
checkPrime

#Problem 4: Extend the program to take a range of number as input and output the Prime Numbers in that range.

primeInRange(){
	echo "Enter the lower limit:"
	read lower
	echo "Enter the upper limit"
	read upper
	echo "The prime numbers in range $lower to $upper are :-"
	for(( i=$lower;i<=$upper;i++ ))
	do
		cnt=0
		for(( j=1;j<=$i;j++ ))
		do
			b=$((i % j))
			if [ $b -eq 0 ]
			then
				cnt=$(($cnt + 1))
			fi
		done
		if [ $cnt -eq 2 ]
		then
			echo $i
		fi
	done
}
primeInRange

#Problem 5: Write a program that computes a factorial of a number taken as input. 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

fact(){
	echo "Enter the number to get factorial"
	read num1
	fact=1
	for (( i=1;i<=$num1;i++ ))
	do
		fact=$(($fact * $i))
	done
	echo "The factorial of $num1 is $fact"
}
fact

#Problem 6: Write a program to compute Factors of a number N using prime factorization method.

primeFactors(){
	echo "Enter the number for prime factor:"
	read primeNumber
	echo "The prime factors of $primeNumber are : "
	for (( i=2;i<=$primeNumber;i++ ))
	do
		modulo1=$(($primeNumber % $i))
		if [ $modulo1 -eq 0 ]
		then
			isPrime=1
			var=`echo "$i / 2" | bc`
			#echo $var
			for(( j=2;j<=$var;j++ ))
			do
				modulo2=$(($i % $j))
				if [ $modulo2 -eq 0 ]
				then
					isPrime=0
					break
				fi
			done
			if [ $isPrime -eq 1 ]
			then
				echo "$i"
			fi
		fi
	done
}
primeFactors
