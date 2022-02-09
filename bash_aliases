alias sbrc="source ~/.bashrc && source ~/.bash_aliases && source ~/.bash_functions"
alias k=kubectl
alias fd=fdfind
alias open=xdg-open
# https://pygments.org/faq/
# $ pip3 install pygments
# Requirement already satisfied: pygments in ./.local/lib/python3.8/site-packages (2.10.0)
alias ccat=pygmentize
alias cli-browser=w3m
alias scanner_list='scanimage -L'
alias scan_this="scanimage --format=jpeg > myscan_$(date +%s).jpeg"
alias md_editor='retext & '
alias show_xplanet='xplanet -window'

# https://github.com/chucknorris-io/chuck-api
alias chuck-norris='curl -s https://api.icndb.com/jokes/random?limitTo=[nerdy] | jq ''.value.joke'''
alias fortune_teller='fortune'
alias neocow='neofetch --ascii "$(fortune | cowsay -W 30)"'

# ls 
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -F'

# cd 
# Alternative: `up n`
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# cd to git root directory
alias cdgr='cd "$(git root)"'

# confirmations
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias diff='diff --color -u'
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

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"


# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias genpassw='openssl rand -base64 16'
	
# Play audio files in current dir by type
alias playwav='rhythmbox *.wav'
alias playogg='rhythmbox *.ogg'
alias playmp3='rhythmbox *.mp3'

# cli sound recorder/player
alias cli_arecord="arecord -f cd -t wav your_record_${RANDOM}.wav"
alias cli_aplay="aplay your_record_*.wav"


# Play video files in current dir by type
alias playavi='vlc *.avi'
alias playmov='vlc *.mov'
alias playmp4='vlc *.mp4'

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

# TV
alias trt2='vlc https://tv-trt2.medya.trt.com.tr/master_720.m3u8'


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

# hints
# modern `du`
alias hint_ncdu=ncdu
alias hint_htop=htop
# modern `df`
alias hint_duf=duf
# display the contents of gzip-compressed text files
alias hint_zless=zless
alias hint_gitignore='sensible-browser https://www.toptal.com/developers/gitignore/api/java,intellij'
alias hint_jo='jo'
alias hint_httpbin='curl -X GET "https://httpbin.org/get" -H "accept: application/json"'

# date utils
alias week='date +%V'
alias dateutc="date -u +'%Y-%m-%dT%H:%M:%SZ'"
# Use tzselect for time zones.
alias dateist="TZ=Europe/Istanbul date"
alias rfedays='python3 -c "from datetime import date as d; print (d.today() - d(2021, 11, 24))"'

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files, preserving hyperlinks
# Usage: `mergepdf input{1,2,3}.pdf`
alias mergepdf='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=_merged.pdf'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Mirror a website
alias mirrorsite='wget -m -k -K -E -e robots=off'

# Mirror stdout to stderr, useful for seeing data going through a pipe
alias peek='tee >(cat 1>&2)'

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
