#!/bin/bash

STATUS=$(curl --silent https://pokedex-cicd.fly.dev/health)

if [ "$STATUS" == "ok" ]; then
  printf "Health check ok"
  exit 0
fi

printf "Health check failed"
exit 1
