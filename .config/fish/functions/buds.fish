function buds
    bluetoothctl power on
    sleep 2
    bluetoothctl connect 74:D7:13:C2:F8:F2
    sleep 1
    # wpctl set-default 76
end
