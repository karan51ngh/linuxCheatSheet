#!/usr/bin/bash

echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

Lithuania)
	echo -n "Lithuanian"
	;;

Romania | Moldova)
	echo -n "Romanian"
	;;

Italy | "San Marino" | Switzerland | "Vatican City")
	echo -n "Italian"
	;;

*)
	echo -n "unknown"
	;;
esac
# example 2
# echo "Please talk to me ..."
# while :
# do
#   read INPUT_STRING
#   case $INPUT_STRING in
# 	hello)
# 		echo "Hello yourself!"
# 		;;
# 	bye)
# 		echo "See you again!"
# 		break
# 		;;
# 	*)
# 		echo "Sorry, I don't understand"
# 		;;
#   esac
# done
# echo
# echo "That's all folks!"
