UUID="pip-on-top-patch@stensel8.github.io"
ZIPFILES="extension.js prefs.js metadata.json schemas locale COPYING"

glib-compile-schemas ./schemas/
zip -qr "$UUID.zip" $ZIPFILES
