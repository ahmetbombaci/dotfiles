my_man() {
	section=${2-1}
	sensible-browser https://linux.die.net/man/$section/$1 &
}

remind_me() {
	# awk, sed, ...
	sensible-browser https://quickref.me/$1 & 
}

k8s-watch() {
	watch -n 10 "kubect get pods" | grep "$@"
}

k8s-cert() {
	kubectl get certificate "$@" -o yaml
}

k8s-scanlogs() {
	kubectl logs -l app="$@" -f | grep "something cool"
}

s3-download-directory() {
	aws s3 cp s3://bucket_name/directory /Users/ahmetbombaci/Downloads/  --recursive
}

ssl-cert-read-file() {
	openssl x509 -in "$@" -text -noout
}

ssl-cert-read() {
	pbpaste | openssl x509 -text -noout
}

ssl-csr-read() {
	openssl req -in "$@" -text -noout
}

ssl-pkey-read() {
	openssl pkey -in "$@" -text -noout
}

ssl-chain() {
	openssl s_client -connect example.com:443 -servername example.com -showcerts
}

security-find-cert() {
	security find-certificate -c "$@" -p -Z
}

jwt() {
	pbpaste | pyjwt decode --no-verify "$(cat)" | jq;
}

gitcleanlocalbranches() {
	git branch | grep -v "master" | xargs git branch -D
}

rrabbit() {
	kubectl port-forward service/rabbitmq 15672:15672 -n "$@"
}

rabbit-local() {
	docker run -d --hostname local-rabbit --name local-rabbit -p 15672:15672 -p 5672:5672 rabbitmq:3-management
}

ext() {
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi

}

# https://bash-prompt.net/guides/bash-colorize-man/
man() {
    env \
    LESS_TERMCAP_mb="$(printf "\e[1;31m")" \
    LESS_TERMCAP_md="$(printf "\e[1;31m")" \
    LESS_TERMCAP_me="$(printf "\e[0m")" \
    LESS_TERMCAP_se="$(printf "\e[0m")" \
    LESS_TERMCAP_so="$(printf "\e[1;44;33m")" \
    LESS_TERMCAP_ue="$(printf "\e[0m")" \
    LESS_TERMCAP_us="$(printf "\e[1;32m")" \
    man "${@}"
}

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

# Go up [n] directories
up()
{
    local cdir="$(pwd)"
    if [[ "${1}" == "" ]]; then
        cdir="$(dirname "${cdir}")"
    elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
        echo "Error: argument must be a number"
    elif ! [[ "${1}" -gt "0" ]]; then
        echo "Error: argument must be positive"
    else
        for ((i=0; i<${1}; i++)); do
            local ncdir="$(dirname "${cdir}")"
            if [[ "${cdir}" == "${ncdir}" ]]; then
                break
            else
                cdir="${ncdir}"
            fi
        done
    fi
    cd "${cdir}"
}

# Execute a command in a specific directory
xin() {
    (
        cd "${1}" && shift && "${@}"
    )
}

# Check if a file contains non-ascii characters
nonascii() {
    LC_ALL=C grep -n '[^[:print:][:space:]]' "${1}"
}

# Serve current directory
serve() {
	python3 -m http.server --directory ${2:-.} ${1:-4444}
}
