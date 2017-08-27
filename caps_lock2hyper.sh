#!/usr/bin/env bash
if xmodmap|grep 'mod4.*Hyper_L';
then
    xmodmap -e "remove Mod4 = Hyper_L" -e "add Mod3 = Hyper_L"
else
    :
fi

if xmodmap|grep 'lock.*Caps_Lock';
then
    xmodmap -e "keysym Caps_Lock = Hyper_L"
else
    :
fi

if xmodmap|grep 'lock.*Hyper_L';
then
    xmodmap -e "remove lock = Hyper_L"
else
    :
fi

