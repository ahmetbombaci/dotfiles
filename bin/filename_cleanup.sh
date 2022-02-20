#!/bin/bash


echo "Now checking &"
sudo find . -name '*\&*'
read -rp "y to replace, n to skip(y/n): " prompt 
if [[ $prompt == 'y' ]]
then
		sudo find . -name '*\&*' -exec rename 's/\&/_/' {} ";"
		echo "done"
fi

echo "Now checking >"
sudo find . -name '*\>*'
read -rp "y to replace, n to skip(y/n): " prompt 
if [[ $prompt == 'y' ]]
then
		sudo find . -name '*\>*' -exec rename 's/\>/_/' {} ";"
		echo "done"
fi


echo "Now checking <"
sudo find . -name '*\<*'
read -rp "y to replace, n to skip(y/n): " prompt 
if [[ $prompt == 'y' ]]
then
		sudo find . -name '*\<*' -exec rename 's/\</_/' {} ";"
		echo "done"
fi

echo "Now checking |"
sudo find . -name '*\|*'
read -rp "y to replace, n to skip(y/n): " prompt 
if [[ $prompt == 'y' ]]
then
		sudo find . -name '*\|*' -exec rename 's/\|/_/' {} ";"
		echo "done"
fi

