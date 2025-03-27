#!/bin/bash
# Check for connections that failed to start from this network device
netstat -ntpl 2> /dev/null | grep :80 | grep -v 0.0.0.0 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | less