#!/bin/bash
calculator_gpa () {
read -p "First class: " fclass
read -p "Credit number: " fcredit
read -p "Class grade: " fgrade
grade=0.0
case $fgrade in
A) num=4.0
temp=$(bc <<< " $fcredit * $num ")
sum=$(bc <<< " $temp / $fcredit ")
;;
A-) num=3.70
temp=$(bc <<< "$fcredit * $num")
sum=$(echo "scale=2;  $temp / $fcredit " | bc)
;;
B+) num=3.33
temp=$(bc <<< " $fcredit * $num ")
sum=$(echo "scale=2;  $temp / $fcredit " | bc)
;;
B) num=3.0
temp=$(bc <<< " $fcredit * $num ")
sum=$(bc <<< " $temp / $fcredit ")
;;
B-) num=2.70
temp=$(bc <<< " $fcredit * $num ")
sum=$(echo "scale=2;  $temp / $fcredit " | bc)
;;
C+) num=2.33
temp=$(bc <<< " $fcredit * $num ")
sum=$(echo "scale=2;  $temp / $fcredit " | bc)
;;
C) num=2.0
temp=$(bc <<< " $fcredit * $num ")
sum=$(bc <<< " $temp / $fcredit ")
;;
C-) num=1.70
temp=$(bc <<< " $fcredit * $num ")
sum=$(echo "scale=2;  $temp / $fcredit " | bc)
;;
D+) num=1.33
temp=$(bc <<< " $fcredit * $num ")
sum=$(echo "scale=2;  $temp / $fcredit " | bc)
;;
D) num=1
temp=$(bc <<< " $fcredit * $num ")
sum=$(bc <<< " $temp / $fcredit ")
;;
*) num=0.0
temp=$(bc <<< " $fcredit * $num ")
sum=$(bc <<< " $temp / $fcredit ")
;;
esac
fgrade=$(echo "scale=2; $grade+$sum " | bc)
echo "$fgrade"

echo "Average gpa for all these 5 classes: "
all=$(echo "scale=2; $grade/5" | bc)
echo $all
}
calculator_gpa
