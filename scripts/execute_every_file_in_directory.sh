#!/bin/sh
# Executes every script in directory

directory=$1

for file in $directory; do
    $file
done
