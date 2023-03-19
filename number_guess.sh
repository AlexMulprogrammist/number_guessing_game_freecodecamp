#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:\n"
read USERNAME

USER_NAME_AVAILABLE=$($PSQL "SELECT user_name FROM users WHERE user_name='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE user_name='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(number_guesses) FROM users INNER JOIN games USING(user_id) WHERE user_name='$USERNAME'")

if [[ -z $USER_NAME_AVAILABLE ]]
  then
    INSERT_USER=$($PSQL "INSERT INTO users(user_name) VALUES('$USERNAME')")
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
  else
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
fi

RANDOM_NUMBER=$((1 + $RANDOM % 1000))
GUESS=1

echo "Guess the secret number between 1 and 1000:"
while read NUMBER
do
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:\n"
    else
      if [[ $NUMBER -eq $RANDOM_NUMBER ]]
        then 
          break;
        else
          if [[ $NUMBER -gt $RANDOM_NUMBER ]]
            then
              echo "It's lower than that, guess again:"
            elif [[ $NUMBER -lt $RANDOM_NUMBER ]]
              then
              echo "It's higher than that, guess again:"
          fi
      fi
  fi
  GUESS=$(( $GUESS + 1))

done

if [[ $GUESS == 1 ]]
  then
    echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
  else
    echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(number_guesses, user_id) VALUES($GUESS, $USER_ID)")
