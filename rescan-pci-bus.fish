#!/usr/bin/env fish

# rescan pci bus to prevent disabling wifi after sleep
# put it in /usr/lib/systemd/systemd-sleep

if test "$argv[1]" = pre
    # Do the thing you want before suspend here, e.g.:
else if test "$argv[1]" = post
    # Do the thing you want after resume here, e.g.:
    echo 1 >/sys/bus/pci/rescan
end
