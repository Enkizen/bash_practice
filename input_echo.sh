#Write a Bash script which accepts  as input and displays the greeting "Welcome (name)"

read name
echo "Welcome $name"

#or  echo Welcome $name
#or echo Welcome ${name}

#echo 'Welcome $name'         single quote will print literal string

#echo `Welcome $name`         ` will crash
#echo Welcome $(name)
