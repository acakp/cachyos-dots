source /usr/share/cachyos-fish-config/cachyos-config.fish
if status is-interactive
    function fish_greeting
        fastfetch -c examples/8
    end
    set -gx EDITOR (type -p helix)
    export EDITOR=helix

    set fish_color_autosuggestion white

    # TDLib path to write telegram client
    # set CGO_CFLAGS -I/home/kitten/code/td/tdlib/include
    # set CGO_LDFLAGS "-Wl,-rpath,/home/kitten/code/td/tdlib/lib -L/home/kitten/code/td/tdlib/lib -ltdjson"

    # to run electron-based apps directly on wayland
    set ELECTRON_OZONE_PLATFORM_HINT auto

    alias lf="lfcd"
    alias hx="helix"
    alias shut="sudo shutdown -h now"
end
