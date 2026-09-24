# AMS Co-simulation in Xschem: Verilog Counter + Ngspice (Icarus + d_cosim)

This repository is a beginner-friendly, end-to-end example of **mixed-signal co-simulation (AMS)** using:

- **Xschem** for schematic capture and plotting
- **Ngspice** (with **XSPICE code models**) for analog simulation
- **Icarus Verilog** for the digital model
- The **`d_cosim`** code model to bridge analog nodes and a Verilog module

You will build and run a simple **4-bit synchronous counter** written in Verilog, embed it as a symbol in Xschem, and drive an **analog current-mirror testbench** that converts the counter bits into a measurable analog current/voltage.

> Note: The **IHP SG13G2 PDK** symbols/models are **not** redistributed here. This repo assumes you already have the PDK installed (e.g., via OpenPDKs). The example testbench uses `sg13_lv_nmos` devices.

## What you get

- A minimal Verilog counter ([`xschem/counter.v`](xschem/counter.v))
- A reusable Xschem symbol (`xschem/counter.sym`) and example schematic (`xschem/current_mirror_cosim.sch`)
- A working Ngspice netlist ([`xschem/simulation/current_mirror_cosim.spice`](xschem/simulation/current_mirror_cosim.spice))
- Launchers inside the schematic for:
  - compiling Verilog with Icarus (`Icarusate Design`)
  - loading simulation results back into Xschem (`load waves`)
- Scripts to check the environment and configure Xschem library paths

## Quick start (already have tools installed)

```bash
# 1) (Optional) sanity check your environment
./scripts/check_install.sh

# 2) configure Xschem search paths (writes to ~/.xschem/xschemrc)
./scripts/setup_xschem_paths.sh

# 3) open the schematic
xschem xschem/current_mirror_cosim.sch
```

Inside Xschem:

1. **Ctrl + click** the `Icarusate Design` launcher to compile `counter.v` into an Icarus executable.
2. Run the simulation (menu **Simulation -> Run**).
3. **Ctrl + click** `load waves` to load the `.raw` file and see the plots.


## Optional: run a pure-digital Verilog test

If you want to validate the counter without Ngspice:

```bash
cd xschem
iverilog -g2012 -o tb ../verilog/tb_counter.v counter.v
vvp tb
```

## Repository layout

```text
.
├── xschem/
│   ├── counter.v                     # Verilog counter (DUT)
│   ├── counter.sym                   # Xschem symbol for the counter
│   ├── current_mirror_cosim.sch      # Example AMS schematic (analog + DUT)
│   └── simulation/
│       └── current_mirror_cosim.spice # Generated/standalone spice netlist
├── docs/
│   ├── INSTALL.md
│   ├── TUTORIAL.md
│   └── TROUBLESHOOTING.md
├── scripts/
│   ├── check_install.sh
│   └── setup_xschem_paths.sh
├── Makefile
└── LICENSE
```

## Documentation

- Start here: [`docs/TUTORIAL.md`](docs/TUTORIAL.md)
- Installation notes: [`docs/INSTALL.md`](docs/INSTALL.md)
- Common failures and fixes: [`docs/TROUBLESHOOTING.md`](docs/TROUBLESHOOTING.md)

## Why this example is useful

Most “AMS” tutorials are either too abstract or assume commercial EDA tools. This repo is intentionally small and explicit:
- you can see **every file**
- you can run it with **open-source tooling**
- you can adapt the pattern to your own Verilog blocks (FSMs, counters, serializers, etc.)

## Contributing

PRs are welcome. See [`CONTRIBUTING.md`](CONTRIBUTING.md).

## License

MIT License. See [`LICENSE`](LICENSE).
