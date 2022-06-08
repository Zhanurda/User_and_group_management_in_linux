#!/bin/bash
types= ( "Paper" "Rock" "Scissors" )
echo "1)Player_vs_Player 
2)Player_vs_Computer"
do
case $choose in
"1")
i=0
echo "How many rounds do you want to play?"
read round
cp1=0
cp2=0
while [ $i -ne $round ] 
do
(( i++ ))
echo "1st player"
read -s p1
echo "2nd player"
read -s p2
if [ $p1 == "Paper" ] && [ $p2 == "Scissors" ]
then
echo "1st player is win!"
(( cp1++ ))
elif [ $p1 == "Paper" ] && [ $p2 == "Rock" ]
then
echo "2nd player is win!"
(( cp2++ ))
elif [ $p1 == "Paper" ] && [ $p2 == "Paper" ]
then
echo "Tie!"
elif [ $p1 == "Rock" ] && [ $p2 == "Paper" ]
then
echo "1st player is win!"
(( cp1++ ))
elif [ $p1 == "Rock" ] && [ $p2 == "Scissors" ]
then
echo "2nd player is win!"
(( cp2++ ))
elif [ $p1 == "Rock" ] && [ $p2 == "Rock" ]
then
echo "Tie!"
elif [ $p1 == "Scissors" ] && [ $p2 == "Rock" ]
then
echo "1st player is win!"
(( cp1++ ))
elif [ $p1 == "Scissors" ] && [ $p2 == "Paper"]
then
echo "2nd player is win!"
(( cp2++ ))
elif [ $p1 == "Scissors" ] && [ $p2 == "Scissors"]
then
echo "Tie!"
fi
done
echo "Player 1 ($cp1 : $cp2) Player 2" >> res.txt
;;
"2")
i=0
echo "How many rounds do you want to play?"
read round
cp1=0
ctc=0
while [ $i -ne $round ] 
do
(( i++ ))
random=$(( ( RANDOM % 3 ) ))
computer=${types[random]}
read p1
if [ $p1 == "Paper" ] && [ $computer == "Scissors" ]
then
(( cp1++ ))
echo "1st player is win!"
elif [ $p1 == "Paper" ] && [ $computer == "Rock" ]
then
echo "Computer is win!"
(( ctc++ ))
elif [ $p1 == "Paper" ] && [ $computer == "Paper" ]
then
echo "Tie!"
elif [ $p1 == "Rock" ] && [ $computer == "Paper" ]
then
echo "1st player is win!"
(( cp1++ ))
elif [ $p1 == "Rock" ] && [ $computer == "Scissors" ]
then
echo "Computer is win!"
(( ctc++ ))
elif [ $p1 == "Rock" ] && [ $computer == "Rock"]
then
echo "Tie!"
elif [ $p1 == "Scissors" ] && [ $computer == "Rock" ]
then
echo "1st is win!"
(( cp1++ ))
elif [ $p1 == "Scissors" ] && [ $computer == "Paper" ]
then
echo "Computer is win!"
(( ctc++ ))
elif [ $p1 == "Scissors" ] && [ $computer == "Scissors" ]
then
echo "Tie!"
fi
done
echo "Player 1 ($cp1 : $ctc) Computer" >> res.txt
esac
done
