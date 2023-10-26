#!/bin/bash

# Get the current user's login shell
current_shell=$(chsh -l | awk '{print $1}')

# Get a list of all available shells
available_shells=$(find /usr/bin/ -type f -executable | grep -v '^/')

# Prompt the user to choose a new shell
echo "Choose a new shell:"
select new_shell in $available_shells
do
  break
done

# Change the user's login shell
chsh -s $new_shell $USER

# Log out and log back in so that the new shell will take effect
echo "You will need to log out and log back in for the new shell to take effect."