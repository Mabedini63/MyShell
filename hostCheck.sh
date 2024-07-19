#!/bin/bash
# iterate through the files in the Home folder
for i in `seq 3` ; do
ping -c 1  192.168.0.$i > /dev/null
if [ `echo $?` -eq 0 ]
then
echo "host 192.168.0.$i is ok"
else 
wall "host 192.168.0.$i not ok"
echo "Host 192.168.0.$i not ok" | mail -s "this is the subject" "root@localhost"
fi
done
