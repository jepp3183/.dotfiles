#!/usr/bin/zsh

calcExists=$(xdotool search --class "floatcalc")
scratchExists=$(xdotool search --class "scratch-terminal")

if [[ -z $calcExists ]] then
    i3-msg -q 'exec --no-startup-id alacritty --class "floatcalc" -o window.opacity=1.0 -e qalc'
fi

if [[ -z $scratchExists ]] then
    i3-msg -q 'exec --no-startup-id alacritty --class "scratch-terminal" -o window.opacity=1.0 '
fi
