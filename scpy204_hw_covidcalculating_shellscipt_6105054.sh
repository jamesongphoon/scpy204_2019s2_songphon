#!/bin/bash
file="COVID-19-geographic-disbtribution-worldwide-2020-04-12.csv"

b=0 #number of death
c=0 #number of case
dum1="q" #x
dum2="q" #x-1
dum3="q" #x-2

IFS=$','

for x in $(cat $file)
do
	dum3=$dum2
	dum2=$dum1
	if [[ $x = "Thailand" ]]; then
		((b=$b+$dum2))
		((c=$c+$dum3))	
	fi
	dum1="$x"
done
echo "death=$b case=$c"
percentcase=$(echo "scale=3; $c/660000" | bc)
percentdeath=$(echo "scale=3; $b*100/$c" | bc)
echo "%death=$percentdeath %case=$percentcase"
