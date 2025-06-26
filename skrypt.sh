#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
  date

elif [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
  count=${2:-100}  # jeśli brak argumentu → domyślnie 100
  for ((i=1; i<=count; i++)); do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Utworzony przez: $0" >> "$filename"
    echo "Data utworzenia: $(date)" >> "$filename"
  done

elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
  echo "--date		lub -d         Wyświetla dzisiejszą datę"
  echo "--logs [n]	lub -l [n]     Tworzy n plików logx.txt (domyślnie 100)"
  echo "--help		lub -h         Wyświetla listę dostępnych opcji"

else
  echo "Nieznana opcja. Użyj --help lub -h."

fi