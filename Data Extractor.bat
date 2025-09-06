@echo off
echo === Generating file lists from phone (excluding Android/data + obb) ===

:: Images
adb shell "find /sdcard/ -path '/sdcard/Android/data' -prune -o -path '/sdcard/Android/obb' -prune -o \( -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.gif' -o -iname '*.webp' -o -iname '*.bmp' -o -iname '*.heic' -o -iname '*.heif' \) \) -print" > img_list.txt

:: Videos
adb shell "find /sdcard/ -path '/sdcard/Android/data' -prune -o -path '/sdcard/Android/obb' -prune -o \( -type f \( -iname '*.mp4' -o -iname '*.mkv' -o -iname '*.avi' -o -iname '*.mov' -o -iname '*.flv' -o -iname '*.wmv' -o -iname '*.webm' \) \) -print" > vid_list.txt

:: Documents
adb shell "find /sdcard/ -path '/sdcard/Android/data' -prune -o -path '/sdcard/Android/obb' -prune -o \( -type f \( -iname '*.pdf' -o -iname '*.doc' -o -iname '*.docx' -o -iname '*.ppt' -o -iname '*.pptx' -o -iname '*.xls' -o -iname '*.xlsx' -o -iname '*.txt' -o -iname '*.csv' -o -iname '*.rtf' -o -iname '*.odt' \) \) -print" > doc_list.txt

:: Audio
adb shell "find /sdcard/ -path '/sdcard/Android/data' -prune -o -path '/sdcard/Android/obb' -prune -o \( -type f \( -iname '*.mp3' -o -iname '*.aac' -o -iname '*.wav' -o -iname '*.flac' -o -iname '*.ogg' -o -iname '*.m4a' -o -iname '*.amr' \) \) -print" > audio_list.txt

:: Archives / Installers
adb shell "find /sdcard/ -path '/sdcard/Android/data' -prune -o -path '/sdcard/Android/obb' -prune -o \( -type f \( -iname '*.zip' -o -iname '*.rar' -o -iname '*.7z' -o -iname '*.tar' -o -iname '*.gz' -o -iname '*.apk' \) \) -print" > archive_list.txt

echo === Creating destination folders on PC ===
mkdir "D:\Phone\Seperated\Photos"   2>nul
mkdir "D:\Phone\Seperated\Videos"   2>nul
mkdir "D:\Phone\Seperated\Docs"     2>nul
mkdir "D:\Phone\Seperated\Audio"    2>nul
mkdir "D:\Phone\Seperated\Archives" 2>nul

echo === Pulling IMAGES ===
for /F "usebackq delims=" %%i in (img_list.txt) do adb pull "%%i" "D:\Phone\Seperated\Photos" 2>nul

echo === Pulling VIDEOS ===
for /F "usebackq delims=" %%i in (vid_list.txt) do adb pull "%%i" "D:\Phone\Seperated\Videos" 2>nul

echo === Pulling DOCUMENTS ===
for /F "usebackq delims=" %%i in (doc_list.txt) do adb pull "%%i" "D:\Phone\Seperated\Docs" 2>nul

echo === Pulling AUDIO ===
for /F "usebackq delims=" %%i in (audio_list.txt) do adb pull "%%i" "D:\Phone\Seperated\Audio" 2>nul

echo === Pulling ARCHIVES / INSTALLERS ===
for /F "usebackq delims=" %%i in (archive_list.txt) do adb pull "%%i" "D:\Phone\Seperated\Archives" 2>nul

echo === Done! All files have been pulled to D:\Phone\Seperated ===
pause
