#!/bin/sh

$directory=$1

for file in $directory; do
    $file
done
