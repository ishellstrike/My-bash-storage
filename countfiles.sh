#!bin/bash
#labp.sh

param=$1
count=0

if [ -e $param ]
then
echo "Error, empty parameter"
else
for file in `find . -name $param`
do
echo $file
let count+=1
done
echo "Founded" $count "by mask "$param
fi
