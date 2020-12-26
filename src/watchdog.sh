#!/usr/bin/env bash

set -eo pipefail

# Open file
exec {FD_DOG}> /dev/watchdog

logger 'watchdog.sh landed'

while true; do

  # Write file
  >& $FD_DOG echo ok

  sleep 15

done

# Close file
exec {FD_DOG}>&-
