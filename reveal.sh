#!/bin/bash

# Display a notification with an animation on OS launch
notify-send -t 5000 -i info "Welcome to Your OS" "Loading..."

# Rest of your script (changing the login shell, etc.)
current_shell=$(chsh -l | awk '{print $1}')
available_shells=$(find /usr/bin/ -type f -executable | grep -v '^/')
echo "Choose a new shell:"
select new_shell in $available_shells
do
  break
done
chsh -s $new_shell $USER

echo "You will need to log out and log back in for the new shell to take effect."

# Add more code below
# Example: Install additional software
echo "Installing some additional software..."
sudo apt-get update
sudo apt-get install -y neofetch

# Example: Create a directory and file
mkdir ~/example_directory
echo "Hello, this is a sample file." > ~/example_directory/sample_file.txt

# Example: Display system information using neofetch
neofetch

# Example: Set a custom wallpaper
wget -O ~/my_wallpaper.jpg https://example.com/my_wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri file://$HOME/my_wallpaper.jpg

# Example: Open a web browser with a welcome page
firefox https://www.example.com/welcome &

# Example: Launch a custom application
echo "Launching a custom application..."
/path/to/your/application &

# Example: Display another notification
notify-send -t 5000 -i dialog-information "Setup Complete" "Your OS is ready for use!"
