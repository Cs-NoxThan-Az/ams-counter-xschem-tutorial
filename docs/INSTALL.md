# Installation and prerequisites

This tutorial focuses on *how to wire the flow*, not on maintaining distro-specific install commands.
Tool packaging changes over time. The safest path is to use a known-good environment (for example,
a prebuilt EDA container used by the open-source silicon community).

## Required tools

You need the following installed and available on your `PATH`:

- `xschem` (tested with 3.4.x)
- `ngspice` built with **XSPICE code models** (tested with ngspice-45)
- `iverilog` and `vvp` (Icarus Verilog)

Verify:

```bash
xschem --version
ngspice -v | head -n 2
iverilog -V | head -n 2
```
## Xschem library search paths

Xschem resolves symbols through its **Tcl variable** `XSCHEM_LIBRARY_PATH`.
Setting the shell environment variable is often not enough if `~/.xschem/xschemrc` overrides it.

This repo provides a helper:

```bash
./scripts/setup_xschem_paths.sh
```

It appends a “user override” block to `~/.xschem/xschemrc` and points Xschem to:

- this repository's `xschem/` directory (project symbols)
- the system Xschem libraries (`xschem_library` and `devices`)

After running it, **restart Xschem**.
