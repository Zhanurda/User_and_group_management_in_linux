#!/bin/bash
cbook () {
echo "1)create contact
2)remove contact
3)list of contacts"
case $choose in
"1")
echo "How many contacts to input"
read a
i=0
while  [ $a -gt $i ]
do
(( i++ ))
read -p "What is your name? " name
read -p "What is your surname? " surname
read -p "What is your id? " id
read -p "What is your e-mail? " e-mail
read -p "What is your phone number? " phone number
read -p "What is file name where you will save contacts? " filename
touch
echo "Name: $name " >> $filename.txt
echo "Surname: $surname " >> $filename.txt
echo "ID: $id " >> $filename.txt
echo "E-mail: $email " >> $filename.txt
echo "Phone number: $number " >> $filename.txt    
done
;;
"2")
read removefile
if [ -f "$removefile.txt" ] 
then
rm $removefile.txt
else
echo "Error!"
fi
;;
"3")
echo "Write your filename"
read filename
cat $filename.txt
esac
}
cbook
