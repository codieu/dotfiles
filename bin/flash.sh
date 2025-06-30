#!/bin/bash

# https://gist.github.com/nicinabox/cee1ced859218dc77617c82ae37b7d6e/raw/b8984ad2e3bee4a593205df7b1355158ea5094b1/flash.sh

# Usage
# ./flash.sh path/to/your.hex

TARGET=$1

ls /dev/tty* > /tmp/1

echo "Reset your Pro Micro now"

while [[ -z $USB ]]; do
  sleep 1
  ls /dev/tty* > /tmp/2
  USB=`diff /tmp/1 /tmp/2 | grep -o '/dev/tty.*'`
done

avrdude -p atmega32u4 -c avr109 -P $USB -U flash:w:$TARGET
