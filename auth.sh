#!/bin/bash

echo "Hello!! Welcome Brother"

echo "Already a User? Y/N?"
read input


if [ $input = y -o $input =  Y ]
then
	echo "Please enter your unsername"
	read usrname
	echo "Please enter your Passward"
	read passward
       #sudo mysql -u root
       #echo "use emol;"
       databack=$(echo "select fullname from emp_det where uname ='$usrname';" | sudo mysql -u root -D employee)
       echo "Welcome back.. $databack"
        echo "quit"| sudo mysql
	exit 1
fi

if [ $input = N  -o  $input = n ]
then 
	echo "hii please sign up!!"
	echo "Enter your full name"
	read name
	echo "Type your Username"
	read uname
	echo "Choose your Password (Alha-numeric >8)"
	read passward_fst
	echo "Type passward to confirm your password"
	read passward_sec
	if [ $passward_fst = $passward_sec  ]
	then 
		echo "insert into emp_det (fullname, uname, password) values ('$name', '$uname', '$passward_fst');" | sudo mysql -u root -D employee
                echo "Thanks for signing up!!! Welcome"
		exit 1
	else 
	     echo "your passward does not match please try again later"	
        fi      
		
	exit 1
fi

