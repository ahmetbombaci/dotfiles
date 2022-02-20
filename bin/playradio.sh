#!/bin/bash

# https://gitlab.com/dwt1/dmscripts/-/blob/master/scripts/dm-radio

options() {
  printf "trtfm,https://radio-trtfm.live.trt.com.tr/master.m3u8\n"
  printf "trtradyo1,https://radio-trtradyo1.live.trt.com.tr/master_128.m3u8\n"
  printf "trtradyo3,https://radio-trtradyo3.live.trt.com.tr/master_128.m3u8\n"
  printf "trtradyocukurova,https://radio-trtcukurova.live.trt.com.tr/master_128.m3u8\n"
  printf "radyoeksen,https://ssldyg.radyotvonline.com/pozitif/smil:eksen.smil/playlist.m3u8\n"
  printf "radyotrafik,https://ssl4.radyotvonline.com/radyohome/radyotrafikhome.stream_aac/playlist.m3u8\n"
  printf "classical-radio,https://zeno.fm/radio/classical-radio/\n"
  printf "classic-rock,https://zeno.fm/radio/classic-rockdnb2sav8qs8uv/\n"
  printf "pop-music,https://zeno.fm/radio/popmusic74vyurvmug0uv/\n"
  printf "rocknroll,https://zeno.fm/radio/rocknroll-radio994c7517qs8uv/\n"
  printf "2000s,https://zeno.fm/radio/the-2000s/\n"
  printf "90s-rock,https://zeno.fm/radio/90s-rock/\n"
  printf "80s-rewind,https://zeno.fm/radio/80s-rewind/\n"
}

echo "Choose radio from dmenu"
selected=$(options | cut -d, -f1 | dmenu)
echo "Playing $selected"

station=$(options | grep "^$selected," | cut -d, -f2)
echo "Playing $station"
mpv $station

