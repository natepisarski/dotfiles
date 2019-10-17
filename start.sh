$HOME/.screenlayout/to.sh
xcompmgr &
herbstclient detect_monitors
herbstclient reload

sleep 4;

# 1
herbstclient use 1
google-chrome-beta &
sleep 2;

# 2 is reserved to be opened from the toolbox since it uses so much RAM

# 3
## Welcome to the most complex one, by far
## This will spawn 4 terminals in equally-sized squares, in 2 rows and 2 columns.
herbstclient use 3

### Southeast
herbstclient split top
herbstclient split left
terminology &
sleep 2;

### Northeast
herbstclient focus u
herbstclient split left
terminology &
sleep 2;

### Northwest
herbstclient focus l
terminology &
sleep 2;

### Southwest
herbstclient focus d
herbstclient focus l
terminology &
sleep 2;

## Done!

# 4 is reserved. See #2 for why

# 5
herbstclient use 5
telegram-desktop &
sleep 2;

# 6 is reserved. See #4 for why

# 7 is temp
# 8 is temp
# 9 is temp
herbstclient use dump
jetbrains-toolbox &
sleep 2;

# Back to #1
herbstclient use 1

# Have a good day!
