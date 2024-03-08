#!/usr/bin/env sh
# shellcheck shell=sh # Written to comply with IEEE Std 1003.1-2017

PORT=$1

# wait a bit for server to initialize
sleep 2

! command -v guix 1>/dev/null || guix shell netcat -- nc localhost $PORT
nc localhost $PORT
