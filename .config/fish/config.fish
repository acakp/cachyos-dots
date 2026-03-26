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

    set -gx ELECTRON_OZONE_PLATFORM_HINT auto # to run electron-based apps directly on wayland
    set USER_GID -g id
    zoxide init fish | source

    # set system proxy
    set -gx HTTP_PROXY socks5h://127.0.0.1:12334
    set -gx HTTPS_PROXY socks5h://127.0.0.1:12334
    set -gx ALL_PROXY socks5h://127.0.0.1:12334
    set -gx http_proxy socks5h://127.0.0.1:12334
    set -gx https_proxy socks5h://127.0.0.1:12334
    set -gx all_proxy socks5h://127.0.0.1:12334

    alias lf="lfcd"
    alias hx="helix"
    alias cd="z"
    # alias shut="sudo shutdown -h now"
    alias shut="systemctl poweroff"
    alias chrome="flatpak run io.github.ungoogled_software.ungoogled_chromium --proxy-server=\"http://127.0.0.1:12334\""
    alias codex="proxychains4 codex"
end
