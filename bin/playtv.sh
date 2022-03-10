#!/bin/bash


options() {
  # https://github.com/iptv-org/iptv/blob/master/channels/tr.m3u
  printf "trt2, https://tv-trt2.medya.trt.com.tr/master_720.m3u8\n"
  printf "aksutv, https://waw2.artiyerelmedya.net/aksutv/bant1/playlist.m3u8\n"
  printf "cnn-turk, https://live.duhnet.tv/S2/HLS_LIVE/cnnturknp/track_4_1000/playlist.m3u8\n"
  printf "bbn, https://www.youtube.com/watch?v=T8ywJd-ANvY\n"
  printf "next, \n"
}

echo "Choose tv from dmenu"
selected=$(options | cut -d, -f1 | dmenu)
echo "Playing $selected"

station=$(options | grep "^$selected," | cut -d, -f2)
echo "Playing $station"
mpv $station

