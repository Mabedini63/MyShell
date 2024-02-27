#!/bin/bash
#Get lsit fo FTP sever in Shell Script user Here documents
#after RUN this Script mylist create in curent Directory in you can see list file of in you server
ftp -n 127.0.0.1 <<END_SCRIPT 
quote USER abedini
quote PASS 123
prompt
nlist * mylist
END_SCRIPT
