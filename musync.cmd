@echo off

if [%*] == [] (
  echo error: YouTube video url expected
) else (
  set shit=
  if "%1" equ "ls"  set shit=1
  if "%1" equ "dir" set shit=1
  
  if defined shit (
    dir /b C:\Users\daol\Sync\youtube-music
  ) else (
    cd C:\Users\daol\Sync\youtube-music
    echo Running: youtube-dl --audio-format mp3 -x %*
    youtube-dl --audio-format mp3 -x %*
  )
)