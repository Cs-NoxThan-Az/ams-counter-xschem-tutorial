#!/usr/bin/env bash
set -euo pipefail

say() { printf "\n== %s ==\n" "$*"; }

say "Tools"
command -v xschem >/dev/null && (xschem --version | head -n 2) || echo "xschem: NOT FOUND"
command -v ngspice >/dev/null && (ngspice -v 2>&1 | head -n 2) || echo "ngspice: NOT FOUND"
echo
command -v iverilog >/dev/null && (iverilog -V | (head -n 2 && cat > /dev/null)) || echo "iverilog: NOT FOUND"
command -v vvp >/dev/null && (vvp -V 2>&1 | head -n 1) || echo "vvp: NOT FOUND"

say "d_cosim presence (best-effort)"
if command -v ngspice >/dev/null; then
ngspice -p -o /dev/null <<'NGEOF' || true
* Trying to parse and run a simple circuit using d_cosim:
*   there should be no errors.
circbyline Test circuit
circbyline .model foo d_cosim simulation="ivlng"
circbyline adut null foo
circbyline .op
circbyline .end
run
quit
NGEOF
  tail -n +1 /tmp/ngspice_showmod.log | tail -n 20 || true
fi

say "Done"
