#!/bin/bash
#Get lsit fo FTP sever in Shell Script user Here documents
ftp -n 127.0.0.1 <<END_SCRIPT 
quote USER abedini
quote PASS 123
prompt
nlist * mylist
END_SCRIPT
