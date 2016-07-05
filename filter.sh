FILE1=$1
FILE2=$2
FILE_MINUS="FILTERED_$1_$2.txt"
FILE_INTERSECTION="INTERSECTED_$1_$2.txt"
FILE_GREP1="NAMESONLY_$1"
grep '^>' $FILE1 > $FILE_GREP1
while read line; do
	echo "Searching: $line in $FILE2"
	if [ "$(grep -c "$line" $FILE2)" == "0" ] ; then
		echo "$line" >> $FILE_MINUS
	else
		echo "$line" >> $FILE_INTERSECTION
	fi
done < $FILE_GREP1
echo "Done"
