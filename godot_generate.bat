@echo off
:: This script lists directories in the current directory and allows the user to choose one for creating subfolders

:: Print the title
echo Godot File Structure Generator
echo ==============================
echo.

:: List directories in the current directory
echo Available directories:
dir /b /ad

:: Prompt for the directory choice
set /p directory="Enter the name of the directory where you want to create the folders: "

:: Check if the directory exists
if not exist "%directory%" (
    echo The directory "%directory%" does not exist.
    pause
    exit /b
)

:: Create folders
mkdir "%directory%\assets"
mkdir "%directory%\scripts"
mkdir "%directory%\scenes"

echo Folders created successfully in "%directory%".
pause