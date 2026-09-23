#!/bin/sh
set -e

cd "$(dirname "$0")"

UUID=$(sed -n 's/.*"uuid": *"\([^"]*\)".*/\1/p' metadata.json)
if [ -z "$UUID" ]; then
	echo "Could not read uuid from metadata.json, aborting." >&2
	exit 1
fi
DEST="$HOME/.local/share/gnome-shell/extensions/$UUID"

echo "Installing $UUID to $DEST"
rm -rf "$DEST"
mkdir -p "$DEST"
cp -r extension.js prefs.js metadata.json schemas COPYING "$DEST/"
[ -d locale ] && cp -r locale "$DEST/"

glib-compile-schemas "$DEST/schemas/"

echo
echo "Installed. Log out and back in (or reboot), then enable it:"
echo "  gnome-extensions enable $UUID"
