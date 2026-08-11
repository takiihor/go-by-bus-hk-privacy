#!/usr/bin/env bash

set -euo pipefail

require_text() {
  local file="$1"
  local text="$2"

  if ! rg --fixed-strings --quiet -- "$text" "$file"; then
    printf 'Expected %s to contain: %s\n' "$file" "$text" >&2
    exit 1
  fi
}

require_file() {
  local file="$1"

  if [[ ! -f "$file" ]]; then
    printf 'Expected file to exist: %s\n' "$file" >&2
    exit 1
  fi
}

require_file support.html
require_text support.html '技術支援 · Support'
require_text support.html 'takii.hor@gmail.com'
require_text support.html 'mailto:takii.hor@gmail.com'
require_text support.html './privacy.html'
require_text support.html './index.html'
require_text index.html './support.html'
require_text privacy.html './support.html'

printf 'Support page checks passed.\n'
