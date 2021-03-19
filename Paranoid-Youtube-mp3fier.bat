@echo off
call url-input.bat urls
call file-output-input output
call downloader %urls%
call copy *.mp3 "%output%"
set _sd=%__CD__%
cd ..
start cmd /c rd /s /q "%_sd%"
echo.
echo ------------------------------------------------
echo Download Finished using Paranoid Youtube mp3fier
echo github.com/Paranoid-Dev/Paranoid-Youtube-mp3fier
echo Saved to %output%
echo ------------------------------------------------
pause
