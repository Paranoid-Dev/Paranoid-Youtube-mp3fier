@echo off
:parse
IF "%~1"=="" GOTO endparse
youtube-dl -f 251 "%~1"
SHIFT
GOTO parse
:endparse
for %%f in (*.webm) do (
ffmpeg -i "%%f" "%%~nf".mp3
del "%%f"
)
mp3gain -r -k *.mp3
