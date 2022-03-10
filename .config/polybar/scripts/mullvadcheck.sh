#!/bin/bash

STR="$(curl -s https://am.i.mullvad.net/connected)"
SUB='You are connected to Mullvad'
if [[ "$STR" == *"$SUB"* ]]; then
  echo "%{F#00ff00}"
  else
  echo "%{F#ff0000}"
fi
