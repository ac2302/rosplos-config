#!/bin/bash

# Clear the screen
clear

# Set text color to green
echo -e "\e[32m"

# Disable cursor blinking
tput civis

# Get the terminal dimensions
rows=$(tput lines)
cols=$(tput cols)

# Initialize an array to store the matrix rain
declare -a matrix

for ((i = 0; i < $cols; i++)); do
  matrix[$i]=0
done

# Function to generate a random character
random_char() {
  echo -n "${CHARS:$((RANDOM % ${#CHARS})):1}"
}

# Main loop to create the Matrix effect
while true; do
  for ((i = 0; i < $cols; i++)); do
    # Display a random character
    echo -n "$(random_char)"

    # Move to the next row
    tput cup ${matrix[$i]}, $i

    # Display a space at the current position to "erase" the previous character
    echo -n " "

    # Update the row position
    matrix[$i]=$((matrix[$i] + 1))

    # Wrap around if the character reaches the bottom
    if [ ${matrix[$i]} -ge $rows ]; then
      matrix[$i]=0
    fi
  done

  # Sleep for a short duration to control the animation speed
  sleep 0.05
done