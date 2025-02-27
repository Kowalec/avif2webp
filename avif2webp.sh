#!/bin/bash

# Sprawdzenie, czy zainstalowane są wymagane narzędzia
if ! command -v avifdec &> /dev/null || ! command -v convert &> /dev/null; then
    echo "Brakuje wymaganych narzędzi! Zainstaluj je za pomocą: brew install imagemagick libavif"
    exit 1
fi

# Konwersja plików AVIF do WEBP
for file in *.png.avif *.jpg.avif; do
    if [[ -f "$file" ]]; then
        base_name="${file%.*}"  # Usunięcie rozszerzenia
        avifdec "$file" "${base_name}.png"  # Konwersja AVIF -> PNG
        convert "${base_name}.png" "${base_name}.webp"  # Konwersja PNG -> WEBP
        rm "${base_name}.png"  # Usunięcie tymczasowego PNG
        echo "Skonwertowano: $file -> ${base_name}.webp"
    fi
done

echo "✅ Wszystkie pliki zostały przekonwertowane!"
