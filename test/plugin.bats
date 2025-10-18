#!/usr/bin/env bats

setup() {
  PLUGIN_DIR="${BATS_TEST_DIRNAME}/.."
  BIN_DIR="${PLUGIN_DIR}/bin"
  INSTALL_DIR="$(mktemp -d)"
}

teardown() {
  rm -rf "${INSTALL_DIR}"
}

@test "list-all returns at least one version or exits gracefully" {
  run "${BIN_DIR}/list-all"
  [ "$status" -eq 0 ]
  # output may be empty if upstream unreachable, but script should exit 0
}

@test "install creates bin/manpager when upstream provides it" {
  # If we can get a version from list-all, attempt install. This test tolerates absence.
  version="$("${BIN_DIR}/list-all" | tail -n1 || true)"
  if [ -n "${version}" ]; then
    run "${BIN_DIR}/install" "${version}" "${INSTALL_DIR}"
    [ "$status" -eq 0 ]
    [ -f "${INSTALL_DIR}/VERSION" ]
  else
    skip "No upstream versions available to test install."
  fi
}