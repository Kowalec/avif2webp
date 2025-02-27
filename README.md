# avif2webp

## Opis

**avif2webp** to prosty skrypt Bash, który konwertuje pliki `.png.avif` i `.jpg.avif` na `.webp` przy użyciu **ImageMagick** i **avifdec**.

---

## Wymagania

Przed użyciem skryptu upewnij się, że masz zainstalowane następujące narzędzia:
- **ImageMagick**
- **libavif**

Jeśli ich nie masz, zainstaluj je za pomocą Homebrew:
```sh
brew install imagemagick libavif
```

---

## Instalacja i użycie

1. Pobierz plik `avif2webp` i nadaj mu uprawnienia do uruchamiania:
   ```sh
   chmod +x avif2webp
   ```
2. Umieść skrypt w folderze z plikami `.png.avif` i `.jpg.avif`.
3. Uruchom skrypt:
   ```sh
   ./avif2webp
   ```
4. Skrypt przekonwertuje wszystkie pliki **`.png.avif` i `.jpg.avif`** na **`.webp`**, a następnie usunie tymczasowe pliki `.png`.

---

## Autor
**avif2webp** został stworzony dla szybkiej i łatwej konwersji plików graficznych AVIF na WEBP.
Sebastian Kowalec


---

# avif2webp

## Description

**avif2webp** is a simple Bash script that converts `.png.avif` and `.jpg.avif` files to `.webp` using **ImageMagick** and **avifdec**.

---

## Requirements

Before using the script, ensure you have the following tools installed:
- **ImageMagick**
- **libavif**

If you don’t have them, install using Homebrew:
```sh
brew install imagemagick libavif
```

---

## Installation & Usage

1. Download the `avif2webp` script and make it executable:
   ```sh
   chmod +x avif2webp
   ```
2. Place the script in a folder containing `.png.avif` and `.jpg.avif` files.
3. Run the script:
   ```sh
   ./avif2webp
   ```
4. The script will convert all **`.png.avif` and `.jpg.avif`** files to **`.webp`**, then remove temporary `.png` files.

---

## Author
**avif2webp** was created for quick and easy AVIF to WEBP image conversion.
Sebastian Kowalec


