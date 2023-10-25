#!/bin/sh

config_repo="https://github.com/ac2302/rosplos-config"

# cloning repo
git clone $config_repo ~/.rosplos-config

# running the refresh script
bash ~/.rosplos-config/refresh.sh