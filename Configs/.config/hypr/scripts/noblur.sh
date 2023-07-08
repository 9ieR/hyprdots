#!/usr/bin/env sh
NOBLUR=$(hyprctl getoption decoration:blur | sed -n '2p' | awk '{print $2}')
if [ $NOBLUR = 1 ] ; then
    hyprctl keyword decoration:blur 0;
    exit
fi
hyprctl reload
