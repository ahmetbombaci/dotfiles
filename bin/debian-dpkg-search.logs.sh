#!/bin/bash

grep "$1" /var/log/dpkg.log
grep "$1" /var/log/dpkg.log.1
zcat /var/log/dpkg*.gz | grep "$1"
