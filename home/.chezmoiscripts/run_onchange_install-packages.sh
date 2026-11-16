#!/bin/bash

if [ -n "$HOMEBREW_BUNDLE_FILE_GLOBAL" ] && [ -f "$HOMEBREW_BUNDLE_FILE_GLOBAL" ]; then
  brew bundle install --global
fi
