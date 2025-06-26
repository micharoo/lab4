#!/bin/bash

if [ "$1" == "--date" ]; then
  date

elif [ "$1" == "--logs" ]; then
  for ((i=1; i<=100; i++)); do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Utworzony przez: $0" >> "$filename"
    echo "Data utworzenia: $(date)" >> "$filename"
  done

fi