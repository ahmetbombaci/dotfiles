# apt-get
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias acs='apt-cache search'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Java Alias
alias updjava='sudo update-alternatives --config java'
alias java8='source /home/ahmet/scripts/java8.sh'
alias java17='source /home/ahmet/scripts/java17.sh'

# maven
alias mvncainstall='mvn clean install -Ddockerfile.skip=true -Djib.skip=true'
alias mvnstyle='mvn pmd:check checkstyle:check'
alias mvnskipall='mvn clean install -Ddockerfile.skip -Dmaven.test.skip -Dcheckstyle.skip -Dpmd.skip -Dmaven.main.skip -Dspring-boot.repackage.skip -Dmaven.install.skip'

# Emulate mac pbcopy/pbpaste
# https://garywoodfine.com/use-pbcopy-on-ubuntu/
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# random
alias k=kubectl
alias fd=fdfind
alias open=xdg-open

# hints
alias hint_retext='retext'
# https://itsfoss.com/download-youtube-linux/
alias hint_youtube-dl='youtube-dl'
# modern `du`
alias hint_ncdu=ncdu
alias hint_htop=htop
# modern `df`
alias hint_duf=duf
# https://pygments.org/faq/
# $ pip3 install pygments
# Requirement already satisfied: pygments in ./.local/lib/python3.8/site-packages (2.10.0)
alias hint_pygmentize=pygmentize
