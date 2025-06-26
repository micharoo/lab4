#!/bin/bash

if [ "$1" == "--date" ]; then
  date

elif [ "$1" == "--logs" ]; then
  count=${2:-100}  # jeśli brak argumentu → domyślnie 100
  for ((i=1; i<=count; i++)); do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Utworzony przez: $0" >> "$filename"
    echo "Data utworzenia: $(date)" >> "$filename"
  done

fi