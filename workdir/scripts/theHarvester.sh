#!/bin/bash
TARGET=$1
RESULTS=~/theHarvester-results
mkdir -p ${RESULTS}
docker run -v ~/theHarvester-results:/tmp/results -t --entrypoint sh theharvester -c "/app/theHarvester.py -d ${TARGET} -s -f output.html -b all; mv report.html output* /tmp/results/" 2>&1 | tee ${RESULTS}/stdout.log
cd ${RESULTS}
tar czf ~/${TARGET}.theHarvester-results.tgz .
rm -r ${RESULTS}
