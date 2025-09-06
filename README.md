# 📂 Android File Extractor (ADB Batch Script)

A simple Windows batch script to automatically extract **photos, videos, documents, audio, and archives** from an Android device to your PC using **ADB (Android Debug Bridge)**.  
This avoids copying unnecessary app data (like `.obb` or cache files) and keeps your files neatly organized.

---

## ✨ Features
- Extracts common file types:
  - **Images**: jpg, jpeg, png, gif, webp, bmp, heic, heif  
  - **Videos**: mp4, mkv, avi, mov, flv, wmv, webm  
  - **Documents**: pdf, doc, docx, ppt, pptx, xls, xlsx, txt, csv, rtf, odt  
  - **Audio**: mp3, aac, wav, flac, ogg, m4a, amr  
  - **Archives / Apps**: zip, rar, 7z, tar, gz, apk  
- Skips **Android/data** and **Android/obb** (avoids app cache/junk).  
- Organizes files into folders:
  - `Photos/`, `Videos/`, `Docs/`, `Audio/`, `Archives/`  
- Works without root access.

---

## 🚀 Requirements
1. **ADB Installed**  
   - [Download Platform Tools](https://developer.android.com/studio/releases/platform-tools)  
   - Add to your system `PATH`.

2. **USB Debugging Enabled** on your Android device  
   - Enable Developer Options → Turn on **USB debugging**.

3. Windows PC (script is `.bat` file).

---

## 🛠 Usage
1. Connect your Android device to PC with USB.  
2. Run the script by double-clicking:

   ```bat
   extract_extended.bat

