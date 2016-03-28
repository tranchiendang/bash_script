#!/bin/bash

for f in $@; do
   res=$( grep $f /etc/passwd )
   if [ $? -eq 0 ]; then
      grep $f /etc/passwd | awk -F":" '{ print "username: " $1 "\t\tuid:" $3 "\t\tfullname: " $5 }'
   else
      echo "User $f does not exists"
   fi
done

