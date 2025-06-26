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

elif [ "$1" == "--init" ] || [ "$1" == "-i" ]; then
  echo "Klonowanie repozytorium lab4 do katalogu: $(pwd)"
  git clone https://github.com/micharoo/lab4.git lab4_clone
  echo "Dodanie repozytorium do PATH: $(pwd)/lab4_clone"
  export PATH="$PATH:$(pwd)/lab4_clone"
fi

elif [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
  count=${2:-100}
  mkdir -p errorx
  for ((i=1; i<=count; i++)); do
    filename="errorx/error$i.txt"
    echo "Plik błędu nr $i" > "$filename"
    echo "Utworzony przez: $0" >> "$filename"
    echo "Data: $(date)" >> "$filename"
  done
fi

elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
  echo "--date         Wyświetla dzisiejszą datę"
  echo "--logs [n]     Tworzy n plików logx.txt (domyślnie 100)"
  echo "--help         Wyświetla listę dostępnych opcji"

else
  echo "Nieznana opcja. Użyj --help lub -h."

fi