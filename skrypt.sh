#!/bin/bash

if [ "$1" == "--date" ]; then
    date +"%Y-%m-%d"
fi

if [ "$1" == "--logs" ] && [ -n "$2" ]; then
    liczba_plikow=$2
    for i in $(seq 1 $liczba_plikow); do
        echo "Nazwa pliku: log${i}.txt" > log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data: $(date +"%Y-%m-%d")" >> log${i}.txt
    done
fi

if [ "$1" == "--help" ]; then
    echo "Dostępne opcje:"
    echo "  --date    - wyświetla dzisiejszą datę"
    echo "  --logs    - tworzy 100 plików logx.txt"
    echo "  --logs <n> - tworzy n plików logx.txt"
    echo "  --help    - wyświetla pomoc"
fi