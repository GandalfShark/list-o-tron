#!/bin/bash
echo '*********************'
echo '**** LIST-O-TRON ****'
echo '*********************'
cat $1 $2 $3 > list1.txt 
sed -u 's/ /\n/g' list1.txt > list2.txt
sort list2.txt | uniq > newlist.txt
rm list1.txt && rm list2.txt
echo ' '
echo 'Your newlist.txt is ready. Remember to rename your new list.'
