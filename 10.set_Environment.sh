#! /bin/bash/ -x

envCheck=`env`
#echo $envCheck

usersecret=`env | grep usersecret`
echo $usersecret

if [[ $usersecret ]]
then
	echo "Already set $usersecret"
else
	echo "set the usersecret"
	usersecret="dH34xJaa23"
fi

echo $usersecret
