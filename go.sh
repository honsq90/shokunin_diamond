#!/usr/bin/env bash


if [ "$1" == "test" ]; then
  ruby diamond_test.rb
  exit "$?"
fi

if [ "$1" == "run" ] ||[ "$#" -ge 2 ]; then
  ruby main.rb "$2"
  exit "$?"
fi

echo "Usage"
echo "./go.sh test|run"
