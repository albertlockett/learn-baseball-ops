#!/bin/bash
"exec ./scripts/install-jq.sh"
"exec ./scripts/configure-docker.sh"

echo "create cronjob to run graphql-server"

crontab -l > mycron
echo "* * * * * bash -c $(pwd)/scripts/is-graphql-running.sh" >> mycron
crontab mycron
rm mycron