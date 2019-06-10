#!/bin/bash
TARGET=$1
/snap/bin/amass enum -active -brute -d ${TARGET} -ip -min-for-recursive 3 -oA amass-results 2>&1 | tee amass-stdout.log
tar czf ${TARGET}.amass-results.tgz amass-results* amass-stdout.log
rm amass-results* amass-stdout.log
