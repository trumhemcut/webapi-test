#!/bin/bash
for number in {1..100}
do
curl http://127.0.0.1/api/values/1
echo ''
sleep 0.1s
done
exit 0