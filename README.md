[![gl_verification](https://github.com/TinyTapeout/tinytapeout-03p5/actions/workflows/gl_verification.yaml/badge.svg)](https://github.com/TinyTapeout/tinytapeout-03p5/actions/workflows/gl_verification.yaml)
[![verification](https://github.com/TinyTapeout/tinytapeout-03p5/actions/workflows/verification.yaml/badge.svg)](https://github.com/TinyTapeout/tinytapeout-03p5/actions/workflows/verification.yaml)
[![gds](https://github.com/TinyTapeout/tinytapeout-03p5/actions/workflows/gds.yaml/badge.svg)](https://github.com/TinyTapeout/tinytapeout-03p5/actions/workflows/gds.yaml)

# Tiny Tapeout 03p5

* Visit https://tinytapeout.com for more information on the project and how to get involved.

This is a prototype Tiny Tapeout using the new Mux.

## Configure

```bash
export OPENLANE2_ROOT=~/openlane
export SKY130_PDK_VERSION=12df12e2e74145e31c5a13de02f9a1e176b56e67

pip3 install volare
volare enable --pdk sky130 ${{ env.SKY130_PDK_VERSION }}

git clone https://github.com/TinyTapeout/tt-multiplexer/
pip install -r tt-multiplexer/py/requirements.txt
```

Then install OpenLane 2 with Nix, as explained [here](https://openlane2.readthedocs.io/en/latest/getting_started/nix_installation/index.html).
Clone OpenLane 2 to ~/openlane (or change the value of the OPENLANE2_ROOT environment variable).

## Fetch projects

Set `GH_USERNAME` and `GH_TOKEN` environment variables with your GitHub username and a personal access token, respectively.
To generate your GH_TOKEN go to https://github.com/settings/tokens/new . Set the checkboxes for repo and workflow.

Then clone the tt03p5 branch from the tt-support-tools repo and install the required packages:

```bash
git clone -b tt03p5 https://github.com/tinytapeout/tt-support-tools tt 
```

Finally, run the following commands to fetch the user projects and generate the configuration for the user_project_wrapper:

```bash
pip install -r tt/requirements.txt
python tt/configure.py --clone-all --fetch-gds --update-caravel
```

## Harden

```bash
cd tt-multiplexer/ol2/tt_ctrl && nix-shell ${OPENLANE2_ROOT}/shell.nix --run "python build.py"
cd tt-multiplexer/ol2/tt_mux && nix-shell ${OPENLANE2_ROOT}/shell.nix --run "python build.py"
# TODO: copy macros to where tt_top expects them - see the "Copy macros" step of gds.yaml
cd tt-multiplexer/ol2/tt_top && nix-shell ${OPENLANE2_ROOT}/shell.nix --run "python build.py"
```

Note: `tt_top` has LVS errors, due to an issue with LVS when multiple output pins are shorted together. Therefore, we currently skip LVS.
