#!/bin/bash

if [ "$1" == "--date" ]; then
    date +"%Y-%m-%d"
fi

if [ "$1" == "--logs" ] && [ -z "$2" ]; then
    for i in {1..100}; do
        echo "Nazwa pliku: log${i}.txt" > log${i}.txt
        echo "Nazwa skryptu: skrypt.sh" >> log${i}.txt
        echo "Data: $(date +"%Y-%m-%d")" >> log${i}.txt
    done
fi