# make Directory to save Files
echo " #####shell checking your needed Directori#####"

if test -d ./files
    then
        echo files directori is fine
    else
        echo " making directory files"
        mkdir ./files
fi

if test -d ./dl
    then
            echo dl directori is fine
else
            echo " making direcory download"
            mkdir ./dl
fi

if test -d ./upload
    then
            echo upload directori is fine

else
            echo " making directory Upload"
            mkdir ./upload
fi
#Make File for Download history
echo " #####shell checking your needed Files#####"
DB1=first.ftp
DB2=list.ftp
DB3=diff.ftp
DB4=tmp

if test -e ./files/$DB1
then
        echo $DB1 is fine
else
        echo making file $DB1
        touch ./files/$DB1
fi

if test -e ./files/$DB2
then
            echo $DB2 is fine
else
            echo making file $DB2
            touch ./files/$DB2
fi
if test -e ./files/$DB3
then
            echo $DB3 is fine
else
            echo making file $DB3
            touch ./files/$DB3
fi
if test -e ./files/$DB4
then
            echo $DB4 is fine
else
            echo making file $DB3
            touch ./files/$DB4
fi
echo "########################################"
echo File and direcory Checking is fine
sleep 5
#FTP=ftp://ftp.spline.de/pub/OpenBSD/7.2/
#FTP=127.0.0.1/pub
echo ls  | ftp -a 127.0.0.01 > ./files/$DB4
awk '{print $9}' ./files/$DB4 > ./files/$DB2
cat ./files/$DB2
cat ./files/$DB1
#awk '{print $9}' ./files/$DB4 > ./files/$DB1
if [ -s ./files/$DB1 ]
then
            echo $DB1 is fine no need to add
else
            cat ./files/$DB2 > ./files/$DB1
fi

#cat ./files/$DB1
grep -xvFf ./files/$DB1 ./files/$DB2 > ./files/$DB3 

for i in `cat ./files/$DB3` ; 
do
   echo $i
   wget -P ./dl ftp://127.0.01/$i
done
cat ./files/$DB2 > ./files/$DB1
echo > ./files/$DB2
