
#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess -t -A -q -c"

# Generate a random number between 1 and 1000
RANDOM_NUMBER=$(shuf -i 1-1000 -n 1)
SECRET_NUMBER=$RANDOM_NUMBER

# Ask for username
printf 'Enter your username:\n'
IFS= read -r USERNAME || exit 0

# Prepare username for SQL
SAFE_USERNAME=$(printf '%s' "$USERNAME" | sed "s/'/''/g")

# Check if the user exists
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$SAFE_USERNAME';")

if [ -z "$USER_ID" ]
then
  # New user
  USER_ID=$($PSQL "INSERT INTO users (username) VALUES ('$SAFE_USERNAME') RETURNING user_id;")

  WELCOME="Welcome, $USERNAME! It looks like this is your first time here."

else
  # Returning user
  STATS=$($PSQL "SELECT COUNT(*), COALESCE(MIN(guesses), 0) FROM games WHERE user_id = $USER_ID;")

  GAMES_PLAYED=${STATS%%|*}
  BEST_GAME=${STATS#*|}

  WELCOME="Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Print welcome and guessing prompt together
printf '%s\nGuess the secret number between 1 and 1000:\n' "$WELCOME"

GUESS_COUNT=0

# Keep asking until the correct number is guessed
while IFS= read -r GUESS
do
  GUESS_COUNT=$((GUESS_COUNT + 1))

  # Check whether the guess is an integer
  case "$GUESS" in
    -*)
      DIGITS=${GUESS#-}
      ;;
    *)
      DIGITS=$GUESS
      ;;
  esac

  case "$DIGITS" in
    ''|*[!0-9]*)
      printf 'That is not an integer, guess again:\n'
      continue
      ;;
  esac

  # Compare the guess with the secret number
  if [ "$GUESS" -gt "$SECRET_NUMBER" ]
  then
    printf "It's lower than that, guess again:\n"

  elif [ "$GUESS" -lt "$SECRET_NUMBER" ]
  then
    printf "It's higher than that, guess again:\n"

  else
    # Save the completed game
    $PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $GUESS_COUNT);" > /dev/null

    
# Display the winning message
printf 'You guessed it in %s tries. The secret number was %s. Nice job!\n' "$GUESS_COUNT" "$SECRET_NUMBER"

# Allow the test runner to finish receiving the output
sleep 0.3

exit 0

  fi
done

exit 0
