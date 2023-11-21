--Place this file in your .xmonad/lib directory and import module Colors into .xmonad/xmonad.hs config
--The easy way is to create a soft link from this file to the file in .xmonad/lib using ln -s
--Then recompile and restart xmonad.

module Colors
    ( wallpaper
    , background, foreground, cursor
    , color0, color1, color2, color3, color4, color5, color6, color7
    , color8, color9, color10, color11, color12, color13, color14, color15
    ) where

-- Shell variables
-- Generated by 'wal'
wallpaper="None"

-- Special
background="#000000"
foreground="#ffffff"
cursor="#eb4509"

-- Colors
color0="#251f1f"
color1="#eb4509"
color2="#94e76b"
color3="#ffac18"
color4="#46aede"
color5="#e32c57"
color6="#d6dbac"
color7="#efefef"
color8="#5e5e5e"
color9="#eb4509"
color10="#94e76b"
color11="#ffac18"
color12="#46aede"
color13="#e32c57"
color14="#d6dbac"
color15="#efefef"