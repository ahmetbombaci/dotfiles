#!/bin/bash

for folder in $(ls -d ./*/); do echo "$folder"; tree -a "$folder" | tail -1  ;  done
