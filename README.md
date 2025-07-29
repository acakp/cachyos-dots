# cachyos-dots

my basic setup of cachyos (niriwm+waybar+fuzzel+foot+hx+)

## list of important programs/pkgs

- zathura
- xwayland-satellite
- wl-clipboard
- syncthing
- polkit-gnome
- gnome-keyring
- mako
- lf
- foliate
- hiddify
- foot
- imv
- mpv
- ttf-hack-nerd

## pacman with proxy

to use pacman with proxy uncommnet this line in /etc/pacman.conf: `XferCommand = /usr/bin/wget --passive-ftp -c -O %o %u` 
and then edit proxy settings in /etc/wgetrc, personally i add (uncomment) these lines:
``
https_proxy = http://127.0.0.1:12334
http_proxy = http://127.0.0.1:12334
``

## firefox

firefox extensions i use:

- ublock origin
- bitwarden
- sponsorblock
- vimium
- simple translate
- unhook

i followed this guide to harden firefox: [Firefox Hardening Guide](https://brainfucksec.github.io/firefox-hardening-guide)

## zapret

[a convenient way to install zapret on linux](https://github.com/Snowy-Fluffy/zapret.installer)
