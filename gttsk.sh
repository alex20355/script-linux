#!/bin/bash

case "$1" in
	--install)
		printf "[%s] argument: %s %s \n" "$1" "$2" "$3"
		cd $2
		mkdir $3
		"[%s] argument: %s %s , success \n" "$1" "$2" "$3" >> /home/$USER/gttsk/gttsk.log
		shift
		;;
	--remove)
		printf "[%s] argument: %s %s \n" "$1" "$2" "$3"
                cd $2 
                rm -r $3
		"[%s] argument: %s %s, success \n" "$1" "$2" "$3" >> /home/$USER/gttsk/gttsk.log
                shift
		;;
	--help)
		printf "how to use this command: \n"
		printf "to install use goto -install [directory] [file] \n"
		printf "to install use goto -remove [directory] [file] \n"
		printf "this script is locate at directory /home/$USER/gttsk\n"
		shift
		;; 
	--)
		if [ -d "/home/$USER/gttsk" ]; then
       			 printf "file gttsk already here \n"
		else
        		printf "we create the file at /home/$USER/gttsk/gtts.log and the directory /home/$USER/gttsk for you \n "
        		cd  ~
        		mkdir gttsk
        		cd gttsk
        		touch gttsk.log
		fi
		shift
		;;
esac
shift

cd ~
