#!/bin/bash

#go to letsbash directory
cd /workspaces/BenProfile/letsbash

#keep track of amount of times menu was accessed
menucount=$(( menucount + 1 ))

#prompt menu select
prompt_menu() {
  echo "Are you ready to play? (y/n)"
  read -r play
  play=$(echo "$play" | tr '[:upper:]' '[:lower:]')
  #playoption=play
  #quitoption=quit
  #^can add multiple menu options such as different games
}

#generate negative response
nresponse=("Well, I didn't want you to play anyways. >.>" "Fine then" "Then why did you even run me?" "You smell anyways" "Go bother someone else then" "okay.. ;_;")
nresponsecnt=${#nresponse[@]}
random_nsponse=$(( RANDOM % nresponsecnt ))
nsponse=${nresponse[random_nsponse]}

#generate good response
gresponse=("Thanks for playing" "Bye, please come back" "aw done already?" "Have a fantastic day!")
gresponsecnt=${#gresponse[@]}
random_gsponse=$(( RANDOM % gresponsecnt ))
gsponse=${gresponse[random_gsponse]}

prompt_menu

#what to do based on user input
if [ "$play" = "n" ]
  then
    if [[ $menucount -eq 1 ]]
      then
        echo "$nsponse"
        menucount=0
        exit
    elif [[ $menucount -gt 1 ]]
      then
        echo "$gsponse"
        menucount=0
        exit
    fi
fi

while [[ $play != "y" && $play != "n" ]]
  do
    echo "please say n or y as your answer"
    prompt_menu
done

if [[ $play == "y" ]]
  then
    ./game.sh
fi
