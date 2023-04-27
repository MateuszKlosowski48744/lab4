#!/bin/bash

if [ "$1" = "--date" -o "$1" == "-d" ]; then
  today=$(date +%Y-%m-%d)
  echo "Dzisiaj jest: $today"
else
  echo "Użycie: $0 --date"
fi

if [ "$1" == "--logs" -o "$1" == "-l" ]; then
  if [[ $2 =~ ^[0-9]+$ ]]; then
    num_logs=$2
  else
    num_logs=100
  fi
  for i in $(seq 1 $num_logs)
  do
    filename="log${i}.txt"
    echo "Nazwa pliku: ${filename}" > ${filename}
    echo "Nazwa skryptu: skrypt.sh" >> ${filename}
    echo "Data: $(date)" >> ${filename}
  done
else
  echo "Nieprawidłowa flaga lub brak argumentu liczby plików. Użyj --logs [liczba], aby utworzyć określoną liczbę plików logów lub --logs, aby utworzyć 100 plików."
fi


