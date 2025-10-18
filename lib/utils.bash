#!/usr/bin/env bash
set -euo pipefail

info() {
  echo "asdf-manpager: $*" >&2
}

fail() {
  echo "asdf-manpager: ERROR: $*" >&2
  exit 1
}

ensure_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    fail "Required command '$1' not found."
  fi
}