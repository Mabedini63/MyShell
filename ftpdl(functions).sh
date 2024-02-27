#!/bin/bash

ftp_get () {
ftp -a 127.0.0.1 << EOF
prompt
nlist * mylist
EOF
}
dl_file () {
cd dl
for i in `cat mylist`;do wget -i ftp://127.0.0.1/$i;done
}
sleep 5
echo "Get filec for download"
ftp_get
sleep 3
echo "Start DL"
cp mylist dl
dl_file
