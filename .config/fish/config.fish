source /usr/share/cachyos-fish-config/cachyos-config.fish
source ~/.config/fish/sensetive.fish
if status is-interactive
    function fish_greeting
        # fastfetch -c examples/8
    end
    # set -g fish_autosuggestion_enabled 0
    set -U fish_user_paths (go env GOPATH)/bin $fish_user_paths # add ~/go/bin to PATH
    # set -gx EDITOR (type -p helix)
    set -gx EDITOR helix

    set fish_color_autosuggestion white

    set ELECTRON_OZONE_PLATFORM_HINT auto # to run electron-based apps directly on wayland
    zoxide init fish | source

    set HTTP_PROXY http://127.0.0.1:12334 # set system proxy (for flatpak)

    alias lf="lfcd"
    alias hx="helix"
    alias cd="z"
    # alias shut="sudo shutdown -h now"
    alias shut="systemctl poweroff"
end
