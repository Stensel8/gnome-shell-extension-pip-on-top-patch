# gnome-shell-extension-pip-on-top

> **Note:** This is [Stensel8's](https://github.com/Stensel8) actively maintained fork of the original extension. The upstream maintainer has been inactive for a while and pull requests there aren't being merged, so fixes and improvements land here first. Credit for the original extension goes to [Rafostar](https://github.com/Rafostar/gnome-shell-extension-pip-on-top).

Keeps "Picture-in-Picture" windows always on top in Wayland sessions. PiP windows are detected by their window title, so most players are supported, including Firefox, Chromium based browsers (Brave, Chrome, Yandex.Browser), Telegram Desktop and the Clapper media player.

Please note that X11 sessions may work, but it is not supported or maintained.

[<img alt="Get it on GNOME Extensions" src="https://extensions.gnome.org/static/images/gnome-extensions.2635f103c955.svg" width="25%" height="25%">](https://extensions.gnome.org/extension/4691/pip-on-top)

## Installation from source code
Run below in terminal one by one:
```sh
mkdir -p ~/.local/share/gnome-shell/extensions
cd ~/.local/share/gnome-shell/extensions
git clone --branch own-fork "https://github.com/Stensel8/gnome-shell-extension-pip-on-top-patch.git" "pip-on-top@rafostar.github.com"
cd pip-on-top@rafostar.github.com
glib-compile-schemas ./schemas/
```
Additionally if you are running Firefox not in English language, execute `translate.sh` script to generate required translations:
```sh
chmod +x translate.sh
./translate.sh
```

After all is done: logout, login back (or reboot) and enable newly installed extension. Enjoy!
