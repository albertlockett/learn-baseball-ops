#!/bin/bash

check_if_is_up() {
  LINE=$(docker ps | grep graphql-api)
  if docker ps | grep -q graphql-api; then
    echo "running"
  else
    if docker ps --all | grep -q graphql-api; then
      docker rm graphql-api
    fi
    exec "./scripts/start-graphql.sh"
  fi
}

# 0
check_if_is_up
sleep 10

# 10
check_if_is_up
sleep 10

# 20
check_if_is_up
sleep 10

# 30
check_if_is_up
sleep 10

# 40
check_if_is_up
sleep 10

# 50
check_if_is_up
sleep 10