#!/bin/bash

for folder in $(ls -d ./*/); do echo "$folder"; find "$folder" -name '* *' | wc -l  ;  done
