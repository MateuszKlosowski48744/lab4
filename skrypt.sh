#!/bin/bash

if [ "$1" = "--date" -o "$1" == "-d" ]; then
  today=$(date +%Y-%m-%d)
  echo "Dzisiaj jest: $today"
else
  echo "Użycie: $0 --date"
fi




