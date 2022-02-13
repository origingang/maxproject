#!/bin/bash

#ENDPOINTS=`awk '{print $2}' apis.txt`

#for i in $ENDPOINTS;
#do
#        echo $i
        #curl -I $i >> Testes_saida.txt
#        curl -Ik $i --connect-timeout 10
#        echo
#        echo
#        echo "==================="
#        echo
#        echo
#done
#aws s3 cp Testes_saida.txt s3://iugu-datalake/archives

while read line
do
	ENDPOINT=`echo "$line" | awk '{print $2}'`
	API=`echo "$line\n" | awk '{print $1}'`
	#echo $API >> Testes_apis.txt
	echo $API 
	#curl -I $ENDPOINT --connect-timeout 5 >> Testes_apis.txt
	curl -vI $ENDPOINT --connect-timeout 10
	echo
	echo
	echo "============="
	echo
	echo
done < apis.txt
