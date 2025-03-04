I'll update the README.md to include information about both scripts (shell script and batch file) in both Polish and English.

```markdown:/Users/sebastiankowalec/github/avif2webp/README.md
# avif2webp

## Opis

**avif2webp** to zestaw skryptów do konwersji plików `.png.avif` i `.jpg.avif` na `.webp` przy użyciu **ImageMagick** i **avifdec**. Dostępne są wersje dla systemów Unix (Linux/macOS) oraz Windows.

---

## Wymagania

Przed użyciem skryptu upewnij się, że masz zainstalowane następujące narzędzia:
- **ImageMagick**
- **libavif**

### Linux/macOS
Dla macOS, zainstaluj wymagane narzędzia za pomocą Homebrew:
```sh
brew install imagemagick libavif
```

Dla Linux (Ubuntu/Debian):
```sh
sudo apt-get install imagemagick libavif
```

Dla Linux (Fedora):
```sh
sudo dnf install imagemagick libavif
```

### Windows
- Zainstaluj [ImageMagick dla Windows](https://imagemagick.org/script/download.php)
- Zainstaluj [libavif dla Windows](https://github.com/AOMediaCodec/libavif/releases)

---

## Instalacja i użycie

### Linux/macOS
1. Pobierz plik `avif2webp.sh` i nadaj mu uprawnienia do uruchamiania:
   ```sh
   chmod +x avif2webp.sh
   ```
2. Umieść skrypt w folderze z plikami `.png.avif` i `.jpg.avif`.
3. Uruchom skrypt:
   ```sh
   ./avif2webp.sh
   ```

### Windows
1. Pobierz plik `avif2webp.bat`
2. Umieść skrypt w folderze z plikami `.png.avif` i `.jpg.avif`
3. Uruchom skrypt dwukrotnie klikając na niego lub przez wiersz poleceń:
   ```cmd
   avif2webp.bat
   ```

Skrypty przekonwertują wszystkie pliki **`.png.avif` i `.jpg.avif`** na **`.webp`**, wyświetlając postęp konwersji oraz statystyki na końcu.

---

## Funkcje
- Automatyczna detekcja systemu operacyjnego (w wersji Unix)
- Sprawdzanie wymaganych zależności
- Szczegółowe komunikaty o błędach
- Statystyki konwersji
- Obsługa błędów
- Usuwanie plików tymczasowych

---

## Autor
**avif2webp** został stworzony dla szybkiej i łatwej konwersji plików graficznych AVIF na WEBP.
Sebastian Kowalec

---

# avif2webp

## Description

**avif2webp** is a set of scripts that convert `.png.avif` and `.jpg.avif` files to `.webp` using **ImageMagick** and **avifdec**. Available for both Unix systems (Linux/macOS) and Windows.

---

## Requirements

Before using the script, ensure you have the following tools installed:
- **ImageMagick**
- **libavif**

### Linux/macOS
For macOS, install required tools using Homebrew:
```sh
brew install imagemagick libavif
```

For Linux (Ubuntu/Debian):
```sh
sudo apt-get install imagemagick libavif
```

For Linux (Fedora):
```sh
sudo dnf install imagemagick libavif
```

### Windows
- Install [ImageMagick for Windows](https://imagemagick.org/script/download.php)
- Install [libavif for Windows](https://github.com/AOMediaCodec/libavif/releases)

---

## Installation & Usage

### Linux/macOS
1. Download the `avif2webp.sh` script and make it executable:
   ```sh
   chmod +x avif2webp.sh
   ```
2. Place the script in a folder containing `.png.avif` and `.jpg.avif` files.
3. Run the script:
   ```sh
   ./avif2webp.sh
   ```

### Windows
1. Download the `avif2webp.bat` file
2. Place the script in a folder with `.png.avif` and `.jpg.avif` files
3. Run the script by double-clicking it or through command prompt:
   ```cmd
   avif2webp.bat
   ```

The scripts will convert all **`.png.avif` and `.jpg.avif`** files to **`.webp`**, showing conversion progress and statistics at the end.

---

## Features
- Automatic OS detection (Unix version)
- Required dependencies checking
- Detailed error messages
- Conversion statistics
- Error handling
- Temporary files cleanup

---

## Author
**avif2webp** was created for quick and easy AVIF to WEBP image conversion.
Sebastian Kowalec
```
