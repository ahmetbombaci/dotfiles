#!/bin/bash

# shellcheck source=/dev/null
source SECRETS

echo url="https://www.duckdns.org/update?domains=${DUCKDNS_DOMAINS}&token=${DUCKDNS_TOKEN}&ip=" | curl -k -o ~/bin/duckdns.log -K -
