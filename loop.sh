#depends on bash version

SERVERS="servera serverb serverc"
for S in $SERVERS; do
  echo "Doing something to $S"
done


for i in {1..100}
do
 # i like this
 echo $i
done


#!/bin/ksh
i=1
while [[ $i -lt 1000 ]] ; do
   # your unix command here #
   echo "$i"
  (( i += 1 ))
done

# Tested using bash version 4.1.5
for ((i=1;i<=100;i++)); 
do 
   # same as java
   echo $i
done
