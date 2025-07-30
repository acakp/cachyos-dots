# cachyos-dots

my basic setup of cachyos (niriwm+waybar+fuzzel+foot+hx+)

## installation steps

1. install cachyos on hard drive without desktop environment
2. login as user
3. install **niri, lightdm, lightdm-gtk-greeter**, mako, waybar, nautilus, xdg-desktop-portal-gnome, gnome-keyring and other stuff you need
4. systemctl enable lightdm.service
5. reboot
6. [useful guide to set up ssh keys for github](https://dev.to/aditya8raj/setup-github-ssh-keys-for-linux-1hib)
7. clone dots repo and hx repo
8. create needed symlinks and move them to .config

## list of important programs/pkgs i use

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
- brightnessctl

## pacman with proxy

to use pacman with proxy uncommnet this line in /etc/pacman.conf: `XferCommand = /usr/bin/wget --passive-ftp -c -O %o %u` 

and then edit proxy settings in /etc/wgetrc, personally i add (uncomment) these lines:
```
https_proxy = http://127.0.0.1:12334
http_proxy = http://127.0.0.1:12334
```

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

## hx

see my helix config in the helix-config repo
