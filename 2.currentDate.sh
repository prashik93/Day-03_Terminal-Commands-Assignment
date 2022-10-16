#! /bin/bash/ -x

path=`pwd`
echo $path

files=`touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1`

date=$(date +"%d%m%Y")
echo $date

function filesFunction(){
	printFilesToRename=`ls *.log.1`
	echo $printFilesToRename
}

for files in `filesFunction`
do
	segregate=`echo $files | awk -F. -v var=$date.log '{$2=var} {print $1"-"$2}'`
	echo $segregate

	mv $files $segregate
done


