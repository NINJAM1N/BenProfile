check_hit() {
  file_Y="$1"
  file_B="$2"
    
  # Read the content of the files
  content_Y=$(<"$file_Y")
  content_B=$(<"$file_B")
    
    # Iterate over the characters and check for alignment
  for ((i=0; i<${#content_Y}; i++)); do
    char_Y="${content_Y:i:1}"
    char_B="${content_B:i:1}"
    if [ "$char_Y" == "Y" ] && [ "$char_B" == "B" ] 
      then
        playerA=0
        cat rip.txt
        sleep 0.5
        high_score
        sleep 0.5
        cat rip.txt
        read -r cont
        cont=$(echo "$cont" | tr '[:lower:]' '[:upper:]')
        if [[ $cont = "Y" ]]
          then
            set_screens
            playerA=1
            break
        elif [[ $cont = "N" ]]
          then
            ./letsbash
          break
        fi
        while [[ $cont != "Y" && $cont != "N" ]]
          do
            cat rip.txt
            read -r cont
            cont=$(echo "$cont" | tr '[:lower:]' '[:upper:]')
        done
      fi
  done
}