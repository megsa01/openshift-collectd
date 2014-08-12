#!/bin/bash

RUNS="1 10 100 1000 10000 100000 1000000"
SIZES="512 1M 5M 10M 100M"

for run in `echo $RUNS`
do
    `dd if=/dev/zero of=~/collectd/tmp bs=512 count=$run oflag=direct`
done

for size in `echo $SIZES`
do
    `dd if=/dev/zero of=~/collectd/tmp bs=$size count=10 oflag=direct`
done

exit 0
