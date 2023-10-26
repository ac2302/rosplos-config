#!/bin/sh

# delay for 1 minute
# sleep 60

# setting last updated
date > ~/.rosplos-config/last_updated

# cloning repo
# git clone $config_repo ~/.rosplos-config
git pull

# running the refresh script
bash ~/.rosplos-config/refresh.sh