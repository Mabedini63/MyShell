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
echo "Get filec for download"
sleep 5
ftp_get
echo "Start DL"
cp mylist dl
dl_file
