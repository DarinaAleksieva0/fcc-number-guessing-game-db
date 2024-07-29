#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME


RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")

 if [[ -z $RETURNING_USER ]]
 then
    # echo "no found"
     INSERTED_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
 fi

guess=1

SECRET_NUMBER=$((1 + $RANDOM % 1000))
echo "Guess the secret number between 1 and 1000:"
while read n2; do
  if [[ ! $n2 =~ ^[0-9]+$ ]]
  then
  echo "That is not an integer, guess again:"
  else
    if [[ $n2 -eq $SECRET_NUMBER ]]; then
        break;
    else
        if [[ $n2 -gt $SECRET_NUMBER ]]; then
            echo -n "It's lower than that, guess again:"
        elif [[ $n2 -lt $SECRET_NUMBER ]]; then
            echo -n "It's higher than that, guess again:"
        fi
    fi
  fi
    guess=$(( $guess + 1 ))
done
if [[ $guess == 1 ]]; then
    echo "You guessed it in $guess tries. The secret number was $SECRET_NUMBER. Nice job!"
else
    echo "You guessed it in $guess tries. The secret number was $SECRET_NUMBER. Nice job!"
fi

USERNAME_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($guess, $USERNAME_ID)")
