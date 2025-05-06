#!/bin/bash

# Obsługa flagi --date lub -d
if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    date +"%Y-%m-%d"
    exit 0 # Zakończ działanie skryptu po wykonaniu tej funkcji
fi

# Obsługa flagi --logs lub -l z opcjonalnym argumentem liczby
if [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
    liczba_plikow=100 # Domyślna liczba plików
    if [ -n "$2" ]; then
        liczba_plikow=$2
    fi
    for i in $(seq 1 $liczba_plikow); do
        echo "Nazwa pliku: log${i}.txt" > log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data: $(date +"%Y-%m-%d")" >> log${i}.txt
    done
    exit 0 # Zakończ działanie skryptu po wykonaniu tej funkcji
fi

# Obsługa flagi --help lub -h (UWAGA: tę część zmodyfikujemy dalej, bez mergowania)
if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "Dostępne opcje:"
    echo "  --date    - wyświetla dzisiejszą datę"
    echo "  --logs    - tworzy 100 plików logx.txt"
    echo "  --logs <n> - tworzy n plików logx.txt"
    echo "  --help    - wyświetla pomoc"
    exit 0 # Zakończ działanie skryptu po wykonaniu tej funkcji
fi

# Domyślna pomoc, jeśli brak argumentów lub nieznany argument
echo "Nieznana opcja lub brak argumentów. Użyj --help aby zobaczyć dostępne opcje."
exit 1 # Zakończ z kodem błędu