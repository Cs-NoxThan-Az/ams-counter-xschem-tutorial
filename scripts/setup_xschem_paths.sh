#!/usr/bin/env bash
set -euo pipefail

# Idempotently append an Xschem library-path snippet to ~/.xschem/xschemrc.
# Usage:
#   export AMS_DEMO_HOME="$PWD"
#   ./scripts/setup_xschem_paths.sh

if [[ -z "${AMS_DEMO_HOME:-}" ]]; then
  echo "ERROR: AMS_DEMO_HOME is not set. Example: export AMS_DEMO_HOME=\"$PWD\"" >&2
  exit 1
fi

XSCHEMRC_DIR="$HOME/.xschem"
XSCHEMRC="$XSCHEMRC_DIR/xschemrc"
mkdir -p "$XSCHEMRC_DIR"

touch "$XSCHEMRC"

MARK_BEGIN="# --- AMS_DEMO: BEGIN (auto-managed) ---"
MARK_END="# --- AMS_DEMO: END (auto-managed) ---"

# Remove any previous block
if grep -qF "$MARK_BEGIN" "$XSCHEMRC"; then
  tmp="$(mktemp)"
  awk -v b="$MARK_BEGIN" -v e="$MARK_END" '
    $0==b {in=1; next}
    $0==e {in=0; next}
    in==0 {print}
  ' "$XSCHEMRC" > "$tmp"
  mv "$tmp" "$XSCHEMRC"
fi

cat >> "$XSCHEMRC" <<EOT

$MARK_BEGIN
# Point Xschem to:
# - this repo (xschem/)  
# - Xschem default libs (xschem_library + devices)
#
# NOTE: adjust the OpenPDKs paths if your install differs.
set XSCHEM_LIBRARY_PATH "$env(AMS_DEMO_HOME)/xschem:/usr/share/xschem/xschem_library:/usr/share/xschem/xschem_library/devices"
$MARK_END
EOT

echo "OK: Updated $XSCHEMRC"
echo "Next: run 'xschem $AMS_DEMO_HOME/xschem/current_mirror_cosim.sch' from this terminal."
