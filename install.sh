#!/bin/sh

buildFile=$(dirname $0)/build.xml
linkName=$1

if [ -z $linkName ]; then
    echo "linkName must be specified"
    exit 1
fi
if [ ! -f $buildFile ]; then
    echo "buildFile $buildFile does not exist"
fi

ln -s $buildFile $linkName
if [ -f $linkName ]; then
    echo "Link was succesfuly created"
fi
