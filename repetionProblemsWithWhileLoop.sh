#! /bin/bash -x

#Problem 1: Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n till 256 is reached..

powersOfTwo(){
	echo "Enter the number"
	read number
	i=0

	while(( $i<=$number ))
	do
		power=$((2 ** $i))
		if [ $power -gt 256 ]
		then
			break
		else
			echo "$power"
		fi
		i=$(($i + 1))
	done
}
powersOfTwo

#Problem 2: Find the Magic Number
#	a. Ask the user to think of a number n between 1 to 100
#	b. Then check with the user if the number is less then n/2 or greater
#	c. Repeat till the Magic Number is reached..

magicNum(){
	magicNumber=$((RANDOM%99 + 1))
	#echo $magicNumber
	echo "Please guess the magic number: "
	read guessNumber
	while [ $guessNumber -ne $magicNumber ]
	do
		if [ $guessNumber -le $magicNumber ]
		then
			echo "$guessNumber is less than Magic Number,Guess Higher"
			read guessNumber
		elif [ $guessNumber -gt $magicNumber ]
		then
			echo "$guessNumber is greater than Magic Number,Guess Lower"
			read guessNumber
		elif [ $guessNumber -eq $magicNumber ]
		then
			echo "$guessNumber is the Magic Number "
		fi
	done
}
magicNum

#Problem 3: Extend the Flip Coin problem till either Heads or Tails wins 11 times.
flipCoin(){
	i=1
	while [ $i -ne 12 ]
	do
		flipCoin=$((RANDOM%2))
		if [ $flipCoin -eq 0 ]
		then
			echo "$i.HEADS"
		else
			echo "$i.TAILS"
		fi
		i=$(($i + 1))
	done
}
flipCoin

#Problem 4:Write a Program where a gambler starts with Rs 100 and places Re 1 bet until he/she goes broke i.e. no more money to gamble or reaches the
#          goal of Rs 200. Keeps track of number of times won and number of bets made.

gambler(){
	savings=100
	bet=10
	winRecords=0
	loseRecords=0
	while(( $savings<200 || $savings==0 ))
	do
        	Result=$((RANDOM%2))
        	#if random number is 1 then won or if 0  then loss the game
        	if [ $Result -eq 1 ]
        	then
                	winRecords=$(($winRecords + 1))
                	savings=$(($savings + $bet))
        	else
                	loseRecords=$(($loseRecords + 1))
                	savings=$(($savings - $bet))
        	fi
	done
	echo "Savings are $savings"
	echo "Total Win : $winRecords"
	echo "Total Lose : $loseRecords"
}
gambler
