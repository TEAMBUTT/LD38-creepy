#!/bin/sh

xcf2png sprites.xcf -o src/sprites.png

love-release \
  -t "Game Name" \
  --uti "creepywizard.game" \
  -a "Creepy Wizard" \
  -e "jared@creepywizard.com" \
  -M -W 32 \
  -b \
  dist src
