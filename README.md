# gnome-shell-extension-pip-on-top

![icon](icon.png)

> **Note:** This is [Stensel8's](https://github.com/Stensel8) actively maintained fork of the original extension. The upstream maintainer has been inactive for a while and pull requests there aren't being merged, so fixes and improvements land here first. Credit for the original extension goes to [Rafostar](https://github.com/Rafostar/gnome-shell-extension-pip-on-top).

Keeps "Picture-in-Picture" windows always on top in Wayland sessions. PiP windows are detected by their window title, so most players are supported, including Firefox, Chromium based browsers (Brave, Chrome, Yandex.Browser), Telegram Desktop and the Clapper media player.

Please note that X11 sessions may work, but it is not supported or maintained.

Not yet published on extensions.gnome.org under this fork's own listing — install from source below in the meantime. (The badge for the original extension is at [extensions.gnome.org/extension/4691/pip-on-top](https://extensions.gnome.org/extension/4691/pip-on-top), but that listing tracks upstream, not this fork.)

## Installation from source code
Run below in terminal one by one:
```sh
mkdir -p ~/.local/share/gnome-shell/extensions
cd ~/.local/share/gnome-shell/extensions
git clone --branch own-fork "https://github.com/Stensel8/gnome-shell-extension-pip-on-top-patch.git" "pip-on-top-patch@stensel8.github.io"
cd pip-on-top-patch@stensel8.github.io
glib-compile-schemas ./schemas/
```
Additionally if you are running Firefox not in English language, execute `translate.sh` script to generate required translations:
```sh
chmod +x translate.sh
./translate.sh
```

After all is done: logout, login back (or reboot) and enable newly installed extension. Enjoy!
