alias sbrc="source ~/.bashrc && source ~/.bash_aliases && source ~/.bash_functions"
alias k=kubectl
# https://pygments.org/faq/
# $ pip3 install pygments
# Requirement already satisfied: pygments in ./.local/lib/python3.8/site-packages (2.10.0)
alias ccat=pygmentize
alias cli-browser=w3m
alias scanner_list='scanimage -L'
alias scan_this="scanimage --format=jpeg > myscan_$(date +%s).jpeg"
alias tb="nc termbin.com 9999"
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
alias diff='diff --color -u'
alias mkdir='mkdir -pv'
# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# maven
alias mvncainstall='mvn clean install -Ddockerfile.skip=true -Djib.skip=true'
alias mvnstyle='mvn pmd:check checkstyle:check'
alias mvnskipall='mvn clean install -Ddockerfile.skip -Dmaven.test.skip -Dcheckstyle.skip -Dpmd.skip -Dmaven.main.skip -Dspring-boot.repackage.skip -Dmaven.install.skip'

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"


# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias genpassw='openssl rand -base64 16'
	
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
alias hint_ss='ss -ntpl'   # 'ss -peanut'

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


if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

