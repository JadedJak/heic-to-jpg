# HEIC → JPG for Dolphin

Adds **Convert to JPG** to the right-click menu in KDE Dolphin for HEIC/HEIF and WebP images. Select one or more files and it writes JPGs next to the originals.

- The original files are kept, and existing files are never overwritten (`photo-1.jpg`, `photo-2.jpg`, …).
- EXIF data is kept for HEIC; quality is 92.
- For WebP, it uses the first frame of animated files and flattens transparency onto white.
- A notification shows how many files converted and which ones failed.

## Requirements
- `heif-convert` (Fedora: `libheif-tools`, Debian/Ubuntu: `libheif-examples`)
- ImageMagick 7 (`magick`) for WebP
- `notify-send`

## Install
```bash
./install.sh
```

## License
MIT
