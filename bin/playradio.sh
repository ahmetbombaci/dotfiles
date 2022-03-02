#!/bin/bash

# https://gitlab.com/dwt1/dmscripts/-/blob/master/scripts/dm-radio

options() {
  printf "trtfm,https://radio-trtfm.live.trt.com.tr/master.m3u8\n"
  printf "trtradyo1,https://radio-trtradyo1.live.trt.com.tr/master_128.m3u8\n"
  printf "trtradyo3,https://radio-trtradyo3.live.trt.com.tr/master_128.m3u8\n"
  printf "trtradyocukurova,https://radio-trtcukurova.live.trt.com.tr/master_128.m3u8\n"
  printf "radyoeksen,https://ssldyg.radyotvonline.com/pozitif/smil:eksen.smil/playlist.m3u8\n"
  printf "bbc1,http://stream.live.vc.bbcmedia.co.uk/bbc_radio_one\n"
  printf "bbc2,http://stream.live.vc.bbcmedia.co.uk/bbc_radio_two\n"
  printf "bbc3,http://stream.live.vc.bbcmedia.co.uk/bbc_radio_three\n"
  printf "bbc4,http://stream.live.vc.bbcmedia.co.uk/bbc_radio_fourfm\n"
  printf "bbc5,http://stream.live.vc.bbcmedia.co.uk/bbc_radio_five_live_online_nonuk\n"
  printf "bbc6,http://stream.live.vc.bbcmedia.co.uk/bbc_6music\n"
  printf "bbc1xtra,http://stream.live.vc.bbcmedia.co.uk/bbc_1xtra\n"
  printf "bbx4xtra,http://stream.live.vc.bbcmedia.co.uk/bbc_radio_four_extra\n"
  printf "bbcyork,http://stream.live.vc.bbcmedia.co.uk/bbc_radio_york\n"
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

