#!/bin/bash
ACCESS_KEY=$(aws secretsmanager --region us-east-1 get-secret-value --secret-id dockerhub_access_token | jq '.SecretString | fromjson | .dockerhub_api_key' | sed -e 's/"//g')
docker login --username albertlockett2 --password $ACCESS_KEY
docker pull albertlockett2/learnbaseball-graphql-api:latest