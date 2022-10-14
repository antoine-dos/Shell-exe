xpr $1 + 0 &> temp1
a=$?
expr $3 + 0 &> temp2
b=$?
if [ $a -lt 2 -a $b -lt 2 ]
then
	if [ $2 = '+' ]
	then
		echo $(($1+$3))
	elif [ "$2" = '-' ]
	then
		 echo $(($1-$3))
	elif [ $2 = '*' ]
	then
		 echo $(($1*$3))
	elif [ "$2" = '/' ]
	then
			if [ $3 -ne 0]
				then
					 echo $(($1/$3))
			else
				echo " la division est impossible car le troisieme argument est nul "
			fi
	else
		echo "vous n'avez pas choisie de bon outil"
	fi
else
	echo "l'argument 1 est 2 doivent etre des nombres "
fi
rm temp1 temp2
 
exit 0case $2 in
	+)
		let RESULTAT=$1+$3
		;;
	-)
		let RESULTAT=$1-$3
		;;
	x)
		let RESULTAT=$1*$3
		;;
	/)
		let RESULTAT=$1/$3
		;;
