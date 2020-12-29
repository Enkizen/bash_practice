#for i in range(1,99,2): doesnt exist in bash

#read -p "Enter a number: " number

for i in {1..99};do
  remainder=$(( $i % 2 ))

  if [ $remainder -eq 0 ]; then
     echo "The number $i you entered is an even number"
  else
     echo "The number you entered $i is an odd number"
  fi   
done


#not beautiful answer. The brackets feel so foreign

for i in {1..99};do
  remainder=$(( $i % 2 ))

  if [ $remainder -eq 0 ]; then
     :
  else
     echo $i
  fi   
done
