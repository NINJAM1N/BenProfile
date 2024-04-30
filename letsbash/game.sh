#!/bin/bash

echo -e "\e[34m~~~~BASH~~~~\e[0m"
sleep 0.3
echo -e "\e[34m~~~~BOY~~~~\e[0m"
sleep 0.3
echo -e "\e[34m5\e[0m"
sleep 0.2
echo -e "\e[34m4\e[0m"
sleep 0.2
echo -e "\e[34m3\e[0m"
sleep 0.2
echo -e "\e[34m2\e[0m"
sleep 0.2
echo -e "\e[34mGO!\e[0m"
sleep 0.2
played=1
#set a layout for the game
game_top() {
  echo -e "\e[34mBash Boy ///////////////////////////////////////////////////////Bash Boy\e[0m" >> gametop.txt
  echo -e "\e[33mwalk right=D       walk left=A      attack(1 space to right)=S\e[0m" >> gametop.txt
  echo -e "\e[33mScore:$cscore\e[0m" >> gametop.txt
}

game_enemy() {
  echo "////////////////////////////////////////////////////////////////////////" >> enemydata.txt
}
game_enemies() {
  echo "////////////////////////////////////////////////////////////////////////" >> enemy2data.txt
  echo "////////////////////////////////////////////////////////////////////////" >> enemy3data.txt
  echo "////////////////////////////////////////////////////////////////////////" >> enemy4data.txt
  echo "////////////////////////////////////////////////////////////////////////" >> enemy5data.txt
  echo "////////////////////////////////////////////////////////////////////////" >> enemy6data.txt
}
game_player() {
  echo ",,,,,,,,,,B,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," >> playerdata.txt
}
game_grass() {
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> gamegrass.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> gamegrass.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> gamegrass.txt
}
error_screen() {
  echo -e "\e[34mBash Boy ///////////////////////////////////////////////////////Bash Boy\e[0m" >> errordata.txt
  echo -e "\e[33mwalk right=D               walk left=A                QUIT=Q\e[0m" >> errordata.txt
  echo "////////////////////////////////////////////////////////////////////////" >> errordata.txt
  echo -e "////////////\e[31INVALID\e[0m////\e[31INPUT\e[0m///////////\e[31INVALID\e[0m////\e[31INPUT\e[0m/////////////////" >> errordata.txt
  echo -e "////////////\e[31INVALID\e[0m////\e[31INPUT\e[0m///////////\e[31INVALID\e[0m////\e[31INPUT\e[0m/////////////////" >> errordata.txt
  echo "////////////////////////////////////////////////////////////////////////" >> errordata.txt
  echo -e "///////////\e[31ONLY VALID INPUTS ARE D A Q\e[0m////////////////////////////////" >> errordata.txt
  echo "////////////////////////////////////////////////////////////////////////" >> errordata.txt
  echo -e "\e[32m,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\e[0m" >> errordata.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> errordata.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> errordata.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> errordata.txt
}
goodbye_screen() {
  echo -e "\e[34mBash Boy ///////////////////////////////////////////////////////Bash Boy\e[0m" >> goodbye.txt
  echo -e "\e[33mwalk right=D               walk left=A                QUIT=Q\e[0m" >> goodbye.txt
  echo "////////////////////////////////////////////////////////////////////////" >> goodbye.txt
  echo -e "///////////////\e[33mGOODBYE\e[0m//////////////////////\e[34mGOODBYE\e[0m/////////////////////" >> goodbye.txt
  echo -e "////////////\e[32mGOODBYE\e[0m///////////\e[31mGOODBYE\e[0m///////////////////////////////////" >> goodbye.txt
  echo "////////////////////////////////////////////////////////////////////////" >> goodbye.txt
  echo "////////////////////////////////////////////////////////////////////////" >> goodbye.txt
  echo "////////////////////////////////////////////////////////////////////////" >> goodbye.txt
  echo -e "\e[32m,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\e[0m" >> goodbye.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> goodbye.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> goodbye.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> goodbye.txt
}
rip_screen() {
  echo -e "\e[34mBash Boy ///////////////////////////////////////////////////////Bash Boy\e[0m" >> rip.txt
  echo -e "\e[33mwalk right=D               walk left=A                QUIT=Q\e[0m" >> rip.txt
  echo -e "/////\e[31m////////////////////////\e[0m///////////////////////////////////////////" >> rip.txt
  echo -e "\e[31m//////\e[0m/////////\e[31mYoUDiEd\e[0m/////////////////////\e[33mGAMEOVER\e[0m/////////////////////" >> rip.txt
  echo -e "////////////\e[31myUoDedI\e[0m///////////\e[31myOuDeid\e[0m///////////////////////////////////" >> rip.txt
  echo -e "/////////////\e[31m/////////////////\e[0m//////////////////////////////////////////" >> rip.txt
  echo -e "/////////////////////////////\e[32mCONTINUE?\e[0m///\e[32m(Y?/\e[31mN?\e[32m)\e[0m///\e[31m////////\e[0m/////////////" >> rip.txt
  echo -e "\e[31m/////////////////\e[0m//////////////////////////////////////\e[31m/////////////////\e[0m" >> rip.txt
  echo -e "\e[31m,,,,,,,,,,,,,,,,,,\e[0m,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\e[31m,,,,,,,,,,,,,,,,,,,\e[0m" >> rip.txt
  echo -e "\e[33m////////////////////////////////////////////////////////////////////////\e[0m" >> rip.txt
  echo -e "\e[33m////////////////////////////////////////////////////////////////////////\e[0m" >> rip.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> rip.txt
}
sure_screen() {
  echo -e "\e[34mBash Boy ///////////////////////////////////////////////////////Bash Boy\e[0m" >> sure.txt
  echo -e "\e[33mwalk right=D               walk left=A                QUIT=Q\e[0m" >> sure.txt
  echo "////////////////////////////////////////////////////////////////////////" >> sure.txt
  echo -e "///////////\e[33mARE YOU SURE?\e[0m///////\e[33m(Y/N)\e[0m//\e[34mARE YOU SURE?\e[0m/////////////////////" >> sure.txt
  echo -e "//////\e[32mARE YOU SURE?\e[0m///////////\e[31mARE YOU SURE?\e[0m/////////////////////////////" >> sure.txt
  echo -e "/////////////////\e[33m(Y/N)\e[0m////////////////////////////////\e[33m(Y/N)\e[0m/////////////" >> sure.txt
  echo -e "////////////////////////////////////\e[32m(Y/N)\e[0m///////////////////////////////" >> sure.txt
  echo "////////////////////////////////////////////////////////////////////////" >> sure.txt
  echo -e "\e[32m,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\e[0m" >> sure.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> sure.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> sure.txt
  echo -e "\e[32m////////////////////////////////////////////////////////////////////////\e[0m" >> sure.txt
}
set_screens() {
  > enemydata.txt
  > enemy2data.txt
  > enemy3data.txt
  > enemy4data.txt
  > enemy5data.txt
  > enemy6data.txt
  > gametop.txt
  > errordata.txt
  > playerdata.txt
  > gamegrass.txt
  > sure.txt
  > rip.txt
  > goodbye.txt
  game_top
  game_enemy
  game_enemies
  game_player
  game_grass
  error_screen
  goodbye_screen
  rip_screen
  sure_screen
  cscore=0
}

game_screen() {
  > gametop.txt
  game_top
  cat gametop.txt
  cat enemydata.txt
  cat enemy2data.txt
  cat enemy3data.txt
  cat enemy4data.txt
  cat enemy5data.txt
  cat enemy6data.txt
  cat playerdata.txt
  cat gamegrass.txt
}

#player movement
player_move_D() {
  pdata="playerdata.txt"
  sed -i 's/\(.*\)B,\(.*\)/\1,B\2/' "$pdata";
}
player_move_A() {
  pdata="playerdata.txt"
  sed -i 's/\(.*\),B\(.*\)/\1B,\2/' "$pdata";
}

prompt_input() {
  read -r move
  move=$(echo "$move" | tr '[:lower:]' '[:upper:]')
}
#enemy logic
enemy_spawn() {
  local chance=70
  timer=$(( timer + 1 ))
  local enemy=$(<enemydata.txt)
  local chance=$(( chance - timer ))
  if [[ $chance -lt 6 ]]
    then
      chance=6
  fi
  local result=""
  for (( i=0; i < ${#enemy}; i++ ));
    do
      local char=${enemy:i:1}
      if  [[ $char == "/" && $((RANDOM % chance)) == 0 ]]
        then
          result+="Y"
        else
          result+=$char
      fi
  done
  > enemydata.txt
  echo "$result" >> enemydata.txt
}
enemy_move() {
  > enemy6data.txt
  mv enemy5data.txt enemy6data.txt
  mv enemy4data.txt enemy5data.txt
  mv enemy3data.txt enemy4data.txt
  mv enemy2data.txt enemy3data.txt
  mv enemydata.txt enemy2data.txt
  game_enemy
  enemy_spawn
}
score_add() {
  ((cscore += 10))
}
#high_score() {
  #idk anymore
#}

#setup
set_screens
timer=0
cscore=0
playerA=1

check_hit() {
  file_Y="$1"
  file_B="$2"
    
  content_Y=$(<"$file_Y")
  content_B=$(<"$file_B")
    
  hit_registered=false

  for ((i=0; i<${#content_Y}; i++)); do
    char_Y="${content_Y:i:1}"
    char_B="${content_B:i:1}"
    if [ "$char_Y" == "Y" ] && [ "$char_B" == "B" ]
      then
      if ! $hit_registered 
        then
          cat rip.txt
          sleep 0.5
          high_score
          sleep 0.5
          hit_registered=true
      fi
      high_score

      read -r -p "Continue (Y/N): " cont
      cont=$(echo "$cont" | tr '[:lower:]' '[:upper:]')
      while [[ $cont != "Y" && $cont != "N" ]]; do
        read -r -p "Invalid input. Continue (Y/N): " cont
        cont=$(echo "$cont" | tr '[:lower:]' '[:upper:]')
      done
      if [[ $cont = "Y" ]]; then
        set_screens
        break
      elif [[ $cont = "N" ]]; then
        playerA=0
        exec ./letsbash.sh
      fi
    fi
  done
}

while [[ $playerA == 1 ]]
  do
    game_screen
    prompt_input
    if [[ $move != "A" && $move != "D" && $move != "Q" ]]
      then
        cat errordata.txt
        sleep 0.5
        game_screen
        while [[ $move != "A" && $move != "D" && $move != "Q" ]]
          do
            prompt_input
        done
    elif [[ $move == "A" ]]
      then
        player_move_A
        enemy_move
        check_hit "enemy6data.txt" "playerdata.txt"
        score_add
        game_screen
    elif [[ $move == "D" ]]
      then
        player_move_D
        enemy_move
        check_hit "enemy6data.txt" "playerdata.txt"
        score_add
        game_screen
    elif [[ $move == "Q" ]]
      then
        cat sure.txt
        read -r sureo
        sureo=$(echo "$sureo" | tr '[:lower:]' '[:upper:]')
        if [[ sureo == "Y" ]]
          then
            cat goodbye.txt
            ./letsbash.sh
        elif [[ $sureo == "N" ]]
          then
            game_screen
        elif [[ $sureo != "Y" && $sureo != "N" ]]
          then
            while [[ $sureo != "Y" && $sureo != "N" ]]
              do
                cat sure.txt
                read -r sureo
                sureo=$(echo "$sureo" | tr '[:lower:]' '[:upper:]')
            done
        fi
    fi
done
