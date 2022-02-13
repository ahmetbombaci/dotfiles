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

# Use Git’s colored diff when available
hash git &>/dev/null;
if [ $? -eq 0 ]; then
	function diff() {
		git diff --no-index --color-words "$@";
	}
fi;


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

if [ -f ~/.functions ]; then
    . ~/.functions
fi

