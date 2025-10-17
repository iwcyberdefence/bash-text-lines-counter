#!/bin/bash
#---> IW Cyber Defence <---#

#Check if directory exists...

read -p "Enter path of directory : " dir_path
if [ ! -d "$dir_path" ]
then
	echo "No path found !"
	exit 1
fi

total_lines=0
files_count=0

#Find all txt files and count their files...

while IFS= read -r -d '' files; 
do
	#Count lines in all files and add to total_lines...
	file_lines=$(wc -l < "$files")
	total_lines=$((total_lines + file_lines))
	files_count=$((files_count + 1))

done < <(find "$dir_path" -type f -name "*.txt" -print0)  


#Print Total Number of Lines and Files Count
echo "                                      "
echo "Number of all .txt files : $files_count"
echo " - - - - - - - - - - - - - - - - - - - - - "
echo "Total Number of Lines in all .txt files : $total_lines"


echo "-------------------------------------------"

#Ask to print all lines

read -p "Do you want to print all these lines? Y or N : " query_conf
echo "-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
echo "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"
echo "  "
#user input to lowercase

usr_query=${query_conf,,}

#Verify User input and print names or exit

if [[ $usr_query == "y" || $usr_query == "yes" ]];
then
	while IFS= read -r -d '' lines;
	do
        	while IFS= read -r line;
        	do
			printf '(--->)  %s\n' "$line"
        	done < "$lines"

	done < <(find "$dir_path" -type f -name "*.txt" -print0)
elif [[ $usr_query == "n" || $usr_query == "no" ]];
then
	echo "Exiting without printing lines."
	exit 2
else
	echo "You do not entered correct option"
	exit 3
fi
