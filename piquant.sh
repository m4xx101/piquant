#!/bin/bash
clear
echo "
              o                                                      o     
            _<|>_                                                   <|>    
                                                                    < >    
 \o_ __o      o      o__ __o/   o       o      o__ __o/  \o__ __o    |     
  |    v\    <|>    /v     |   <|>     <|>    /v     |    |     |>   o__/_ 
 / \    <\   / \   />     / \  < >     < >   />     / \  / \   / \   |     
 \o/     /   \o/   \      \o/   |       |    \      \o/  \o/   \o/   |     
  |     o     |     o      |    o       o     o      |    |     |    o     
 / \ __/>    / \    <\__  < >   <\__ __/>     <\__  / \  / \   / \   <\__  
 \o/      By m4xX.!        |                                               
  |                        o                                               
 / \                       <\__                                            


 "

read -p "Enter Words separated by 'space' : " input
read -p "Enter Birth date (DDMMYYYY) : " bd
read -p "Do you want to add special characters in the End.?[Y/N]: " choice
special_char=('!' '#' '$' '%' '&' '(' ')' '*' '+' ',' '-' '.' '/' ':' ';' '<' '=' '>' '?' '@' '[' '\' ']' '^' '_' '`' '{' '|' '}' '~')
numb=(1 2 3 4 5 6 7 8 9 0)
users_words=($input)
dd="${bd:0:2}"
mm="${bd:2:2}"
yy="${bd:4:4}"

if [[ $choice = "Y" || $choice = "y" || $choice = "yes" ]]; 
then

	for ((k=1;k<="${#users_words[@]}";k++))
	do
		word="";
		for (( i=0; i < $k; i++ ))
		do
			word="${word}${users_words[$i]}"; 
		
		   	#echo "$word"
			for (( j = 0; j < "${#special_char[@]}"; j++ ));
			do
				for ((o = 0; o <= j; o++ ))
				do

				 echo "${users_words[$i]}""${special_char[$j]}" | tr -d ' ' 
				 echo "$word""${special_char[$j]}" | tr -d ' ' 
				 echo "$word""${special_char[$j]}""$yy"| tr -d ' '
				 echo "${users_words[$i]}""${special_char[$j]}""$dd" | tr -d ' ' 
				 echo "${users_words[$i]}""${special_char[$j]}""$dd""$yy" | tr -d ' ' 
				 echo "${users_words[$i]}""${special_char[$j]}""$dd""$mm""$yy" | tr -d ' ' 
				 echo "${users_words[$i]}""${special_char[$j]}""$yy""$mm""$dd" | tr -d ' ' 
				 echo "${users_words[$i]}""${special_char[$j]}""${special_char[$o]}""$yy" | tr -d ' '
				 echo "${users_words[$i]}""$yy""${special_char[$j]}""${special_char[$o]}" | tr -d ' '

				done
			done
		done
	done
	
	perm() {
    local items="$1"
    local out="$2"
    local i
    [[ "$items" == "" ]] && echo "$out" && return
    for (( i=0; i<${#items}; i++ )) ; do
        perm "${items:0:i}${items:i+1}" "$out${users_words[${items:i:1}]}"
    done
	}

	test() {
    local number="$1"
    local iniitem="$(seq -s' ' 0 ${number} | sed -n 's/ //g;p')"
    perm "$iniitem"
	}

	l=`expr ${#users_words[@]} - 1`
	test $l;


elif [[ $choice = "N" || $choice = "n" || $choice = "no" ]]; then

	for ((k=1;k<="${#users_words[@]}";k++))
	do
		word="";
		for (( i=0; i < $k; i++ ))
		do
			word="${word}${users_words[$i]}"; 
		done

		echo "$word""${users_words[$i]}" | tr -d ' ' 
		echo "$word""$yy""${users_words[$i]}" | tr -d ' '
		echo "${users_words[$i]}""$word" | tr -d ' ' 
		echo "${users_words[$i]}""$yy""$word" | tr -d ' '
		echo "${users_words[$i]}""$word""$yy" | tr -d ' ' 
		echo "${users_words[$i]}""$word""$mm" | tr -d ' ' 
		echo "$word""${users_words[$i]}""$yy" | tr -d ' ' 
		echo "$word""${users_words[$i]}""$mm" | tr -d ' '
		echo "${users_words[$i]}""$word""$dd" | tr -d ' ' 
		echo "$word""${users_words[$i]}""$dd" | tr -d ' ' 
		echo "${users_words[$i]}""$word""$dd""$mm""$yy" | tr -d ' ' 
		echo "${users_words[$i]}""$word""$yy""$mm""$dd" | tr -d ' ' 
		echo "$word""${users_words[$i]}""$dd""$mm""$yy" | tr -d ' '
		echo "$word""${users_words[$i]}""$yy""$mm""$dd" | tr -d ' '
			
		#echo "$word""${special_char[$j]}" | tr -d ' ' 
		#echo "$word""${special_char[$j]}""$yy"| tr -d ' '
		#echo "${users_words[$i]}""${special_char[$j]}""$dd" | tr -d ' ' 
		#echo "${users_words[$i]}""${special_char[$j]}""$dd""$yy" | tr -d ' ' 
		#echo "${users_words[$i]}""${special_char[$j]}""$dd""$mm""$yy" | tr -d ' ' 
		#echo "${users_words[$i]}""${special_char[$j]}""$yy""$mm""$dd" | tr -d ' ' 
		#echo "${users_words[$i]}""${special_char[$j]}""${special_char[$o]}""$yy" | tr -d ' '
		#echo "${users_words[$i]}""$yy""${special_char[$j]}""${special_char[$o]}" | tr -d ' ' 
			
	done

else 

 echo "You sir, yes you.! you just gave invalid input.!!"
	
fi	



