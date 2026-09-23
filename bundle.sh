UUID="pip-on-top-patch@stensel8.github.io"
ZIPFILES="extension.js prefs.js metadata.json schemas locale COPYING"

zip -qr "$UUID.zip" $ZIPFILES -x "schemas/gschemas.compiled"
