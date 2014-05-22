#!/bin/bash

rsync -avzhe ssh --progress ~/dev/openshift-collectd/ devbase:~/dev/openshift-collectd/