#!/bin/bash

wget -q -O - https://mackerel.io/file/script/setup-apt-v2.sh | sh
sudo apt-get install mackerel-agent
sudo mackerel-agent init -apikey="$MACKEREL_API_KEY"
sudo nohup mackerel-agent --conf=/etc/mackerel-agent/mackerel-agent.conf &
