myman() {
	# awk, sed, ...
	google-chrome https://quickref.me/$1 & 
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


curlGET() {
	curl -i -k -v -XGET "https://example.com/v1/api"
}
