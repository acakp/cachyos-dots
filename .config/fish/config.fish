source /usr/share/cachyos-fish-config/cachyos-config.fish
if status is-interactive
    function fish_greeting
        # fastfetch -c examples/8
    end
    # set -g fish_autosuggestion_enabled 0
    set -U fish_user_paths (go env GOPATH)/bin $fish_user_paths # add ~/go/bin to PATH
    set -gx EDITOR (type -p helix)
    export EDITOR=helix

    set fish_color_autosuggestion white

    set ELECTRON_OZONE_PLATFORM_HINT auto # to run electron-based apps directly on wayland
    zoxide init fish | source

    alias lf="lfcd"
    alias hx="helix"
    alias cd="z"
    alias shut="sudo shutdown -h now"
end
