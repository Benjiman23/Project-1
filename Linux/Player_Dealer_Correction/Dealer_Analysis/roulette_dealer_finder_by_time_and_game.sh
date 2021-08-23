#!/bin/bash

# $1 is date input. Date layout should be month then day and total 4 characters. Eg '0310' is 10th of March
# $2 is time input and display both AM and PM values,
# Time layout should be 2 characters and will display am and pm. Eg '05' will show 5 AM and 5 PM"
# $3 is game played input. 'BlackJack' for BlackJack 'Roulette' for Roulette 'Texas' for Texas hold em.

if [ $3 = 'BlackJack' ]
then 
	grep $2 ./$1_Dealer_schedule | awk -F" " '{print $1, $2, $3, $4}';
elif [ $3 = 'Roulette' ]
then 
        grep $2 ./$1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}';
elif [ $3 = 'Texas' ]
then 
        grep $2 ./$1_Dealer_schedule | awk -F" " '{print $1, $2, $7, $8}';
else
	echo "Input errror"
	echo "Date layout should be month then day and total 4 characters. Eg '0310' is 10th of March"
	echo "Time layout should be 2 characters and will display am and pm. Eg '05' will show 5 AM and 5 PM"
	echo "For Blackjack input 'BlackJack'"
	echo "For Roulette input 'Roulette'"
	echo "For Texas hold em input 'Texas'"
fi
