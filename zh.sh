
#!/bin/bash
calculator () {
while true
do
  echo "plus + numbers"
  echo "minus - numbers"
  echo "multiple * numbers"
  echo "devide / numbers"
read x
read z
read y
case $z in
+)echo  $(($x + $y))
;;
-) echo $(($x - $y))
;;
x) echo $(($x * $y))
;;
/)
res=$(echo "scale=2; $x/$y" | bc -l)
echo $res
;;
esac
done
}
calculator
