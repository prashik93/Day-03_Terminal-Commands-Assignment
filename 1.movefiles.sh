#! /bin/bash -x

folderName=""
function filesFunction(){
	echo `ls *.txt`
}

for files in `filesFunction`
do
	echo $files
	folderName=`echo $files | awk -F. '{print $1}'`
	echo $folderName
	if [ -d $folderName ]
		then
			rm -r $folderName
	fi
	mkdir $folderName
	mv $files $folderName/$files
done
