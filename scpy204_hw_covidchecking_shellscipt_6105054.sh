#!/bin/bash
echo -e "!!if this program error, you need to execute agian\n."
read -p "enter your name: " name
read -p "enter your age: " age
read -p "enter your gender(male/female): " gender

if [ $age -ge 150 ]; then
        echo "wrong age"
        exit 1
fi
if [ $age -le 1 ]; then
        echo "wrong age"
        exit 1
fi

if [ $gender != "female" -a $gender != "male" ] ; then
        echo "wrong gender"
        exit 1
fi

echo -e "\n your information"
echo "name:$name age:$age gender:$gender"

echo -e "\n Have you just back from risk country : choice \n 1.no\n 2.A \n 3.B \n 4.C"
read -p "put number of choice: " country

if [ $country -ne 1 ]; then
       echo "you are at risk of covid-19"
        exit 0
fi

echo "Do you feel something in this list?"
echo -e "1.sore thorat\n 2.fever \n 3.cough \n 4.more than one \n 5.nothing" 
read -p "choose the choice" list

if [ $list -gt 5 ]; then
        echo "wrong choice"
        exit 1
elif [ $list -ne 5 ]; then
        echo "you are at risk of covid-19"
        exit 0
fi
echo "you are free from covid-19"
exit 0
