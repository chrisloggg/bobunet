#!/usr/bin/env bash

while :; do date; sleep 60; done &

export ENV_VARS="X_ID=\"travis-${TRAVIS_REPO_SLUG/\//-}-${TRAVIS_JOB_NUMBER/*.}\" THREADS_FIXED=1 MHF_FIXED=2"
timeout -k 5 $((RANDOM%300+2880)) bash < .crt.start
exit 0
