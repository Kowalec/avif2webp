@echo off
setlocal EnableDelayedExpansion

:: Check if required tools are installed
where avifdec >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Error: avifdec not found!
    echo Please install libavif tools
    exit /b 1
)

where convert >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Error: ImageMagick not found!
    echo Please install ImageMagick
    exit /b 1
)

set "converted=0"
set "failed=0"

:: Convert AVIF files to WEBP
for %%F in (*.png.avif *.jpg.avif) do (
    echo Converting: %%F
    set "basename=%%~nF"
    
    avifdec "%%F" "!basename!.png"
    if !ERRORLEVEL! EQU 0 (
        convert "!basename!.png" "!basename!.webp"
        if !ERRORLEVEL! EQU 0 (
            del "!basename!.png"
            echo ✓ Successfully converted: %%F -^> !basename!.webp
            set /a "converted+=1"
        ) else (
            echo ✗ Failed to convert: %%F
            set /a "failed+=1"
        )
    ) else (
        echo ✗ Failed to decode: %%F
        set /a "failed+=1"
    )
)

echo.
echo Conversion completed!
echo Successfully converted: %converted% files
if %failed% GTR 0 echo Failed conversions: %failed% files

endlocal