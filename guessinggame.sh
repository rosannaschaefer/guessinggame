function file_count {
  echo $(ls | wc -l)
}

number=$(file_count)

echo "Guess the number of files in the current directory."
read guess

while [[ $guess -ne $number ]]
  do
    if ! [[ $guess =~ ^[0-9]+ ]]
      then
        echo "Enter a positive integer please."
    elif [[ $guess -gt $number ]] && [[ $guess =~ ^[0-9]+ ]]
      then
          echo "No, $guess is too high.Try again."
    elif [[ $guess -lt $number ]] && [[ $guess =~ ^[0-9]+ ]]
      then
          echo "$guess is too low. Try again."
    fi
    read guess
done
    echo "That's right! There are $number files."
