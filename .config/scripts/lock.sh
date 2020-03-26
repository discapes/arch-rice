#!/bin/sh

source ~/.cache/wal/colors.sh

B=${color0}"00"
C=${color1}"22"
D=${color2}"cc"
T=${color3}"ee"
W=${color4}"bb"
V=${color5}"bb"

#B='#00000000'  # blank
#C='#ffffff22'  # clear ish
#D='#ff00ffcc'  # default
#T='#ee00eeee'  # text
#W='#880000bb'  # wrong
#V='#bb00bbbb'  # verifying

icon="$HOME/.config/scripts/lock.png"
tmpbg='/tmp/screen.png'
 
(( $# )) && { icon=$1; }
 
scrot "$tmpbg"
convert "$tmpbg" -blur 0x3 "$tmpbg"
#convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
#convert "$tmpbg" -blur 0x3 "$tmpbg"

i3lock \
-i "$tmpbg" \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--veriftext="Checking.." \
--wrongtext="Nope!" \
--modsize=10 \
# etc

rm "$tmpbg"
