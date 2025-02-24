#!/bin/bash
# Terminate processes that are consuming an unusually high amount of CPU
ps -e -o pid,pcpu,pmem,user,args | sort -k 2 -r | head -n 10 | awk '{print $1}' | xargs kill -9