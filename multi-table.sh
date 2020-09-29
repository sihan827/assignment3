#!/bin/sh

row=$1
column=$2


if [ $row -le 0 ] || [ $column -le 0 ]
then
	echo "parameters must be bigger than 0"
	exit 0
fi


i=1
j=1

while [ $i -le $row ]
do
	j=1
	while [ $j -le $column ]
	do
		result=`expr $i \* $j`
		echo -n $i "*" $j "=" $result " "
		j=`expr $j + 1`
	done
	echo ""
	i=`expr $i + 1`
done
exit 0
