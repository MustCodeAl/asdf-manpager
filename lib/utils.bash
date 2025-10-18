#!/usr/bin/env bash
# Small utility helpers used by bin scripts.
# Keep these POSIX-friendly and avoid heavy external deps.
set -euo pipefail

info() {
  printf '%s\n' "asdf-manpager: INFO: $*" >&2
}

warn() {
  printf '%s\n' "asdf-manpager: WARN: $*" >&2
}

fail() {
  printf '%s\n' "asdf-manpager: ERROR: $*" >&2
  exit 1
}

ensure_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    fail "Required command '$1' not found in PATH"
  fi
}
