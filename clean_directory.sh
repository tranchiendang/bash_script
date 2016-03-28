#!/bin/bash

if [ "$1" != "" ]; then
    echo $1
    #find $f -type f -name ".*" -delete
    # remove swap file
    find $1 -type f -name "\.*swp" -delete
    # remove temp file
    find $1 -type f -name "\.*tmp" -delete
    # remove zero length file
    find $1 -type f -empty -delete
    # archive directory
    result=${PWD##*/}
    echo $result
    tar cvf ~/$result.tar $1
fi

