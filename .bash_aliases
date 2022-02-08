# apt
alias aptup='sudo apt update && sudo apt upgrade'
alias aptupd='sudo apt update'
alias aptupg='sudo apt upgrade'
alias aptin='sudo apt-get install'
alias aptrm='sudo apt-get remove'
alias aptupd='sudo apt-get update'
alias aptfd='apt-cache search'
alias hint_aptin_recommended_by_zim='sudo apt-get install --install-recommends zim'
alias hint_show_packages_zim_recommends='apt-cache show zim | grep '^Recommends:''

# ls 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# cd 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .3='....'
alias .4='cd ../../../..'

# confirmations
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'

# Play audio files in current dir by type
alias playwav='rhythmbox *.wav'
alias playogg='rhythmbox *.ogg'
alias playmp3='rhythmbox *.mp3'

# Play video files in current dir by type
alias playavi='vlc *.avi'
alias playmov='vlc *.mov'
alias playmp4='vlc *.mp4'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias diff='diff --color -u'
alias ccat=pygmentize
alias mkdir='mkdir -pv'

# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# java 
alias updjava='sudo update-alternatives --config java'
alias java8='source /home/ahmet/bin/java8.sh'
alias java17='source /home/ahmet/bin/java17.sh'

# maven
alias mvncainstall='mvn clean install -Ddockerfile.skip=true -Djib.skip=true'
alias mvnstyle='mvn pmd:check checkstyle:check'
alias mvnskipall='mvn clean install -Ddockerfile.skip -Dmaven.test.skip -Dcheckstyle.skip -Dpmd.skip -Dmaven.main.skip -Dspring-boot.repackage.skip -Dmaven.install.skip'

# Emulate mac pbcopy/pbpaste
# https://garywoodfine.com/use-pbcopy-on-ubuntu/
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"


# youtube-dl
# https://itsfoss.com/download-youtube-linux/
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# cheatsheets
# man <cmd>
# <cmd> --help
# tldr <cmd>
# linux.die.net
alias myman='my_man'
# quickref.me
alias remindme='remind_me'
alias quickref='remind_me'
alias cheat-linux='sensible-browser https://www.golinuxcloud.com/linux-commands-cheat-sheet/ & '


# random
alias k=kubectl
alias fd=fdfind
alias open=xdg-open
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
# https://pygments.org/faq/
# $ pip3 install pygments
# Requirement already satisfied: pygments in ./.local/lib/python3.8/site-packages (2.10.0)
alias dateutc="date -u +'%Y-%m-%dT%H:%M:%SZ'"
# Use tzselect for time zones.
alias dateist="TZ=Europe/Istanbul date"
alias rfedays='python3 -c "from datetime import date as d; print (d.today() - d(2021, 11, 24))"'
# https://github.com/chucknorris-io/chuck-api
alias chuck-norris='curl -s https://api.icndb.com/jokes/random?limitTo=[nerdy] | jq ''.value.joke'''
alias genpassw='openssl rand -base64 16'
alias trt2='vlc https://tv-trt2.medya.trt.com.tr/master_720.m3u8'

# hints
alias hint_retext='retext'
# modern `du`
alias hint_ncdu=ncdu
alias hint_htop=htop
# modern `df`
alias hint_duf=duf
# display the contents of gzip-compressed text files
alias hint_zless=zless
# cli browser
alias hint_w3m=w3m
# cli sound recorder/player
alias hint_arecord='arecord -d 10 -f cd -t wav foobar.wav'
alias hint_aplay='aplay foobar.wav'
alias hint_list_scanners='scanimage -L'
alias hint_scanner='scanimage --format=jpeg > myscan.jpeg'
alias hint_fortune='fortune'
alias hint_cowsay='cowsay'
alias hint_gitignore='sensible-browser https://www.toptal.com/developers/gitignore/api/java,intellij'
alias hint_xplanet='xplanet -window'
alias hint_jo='jo'
alias hint_httpbin='curl -X GET "https://httpbin.org/get" -H "accept: application/json"'
