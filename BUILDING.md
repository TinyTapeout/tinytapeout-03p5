# Build Tiny Tapeout 03p5

## Environment setup

```
export PDK_ROOT=<some dir>/pdk
export OPENLANE_ROOT=<some dir>/openlane
export OPENLANE_TAG=2023.02.14
export OPENLANE_IMAGE_NAME=efabless/openlane:2023.05.19
export PDK=sky130A
make setup

git clone -b tt03p5 https://github.com/TinyTapeout/tt-multiplexer/
pip install -r tt-multiplexer/proto/requirements.txt
make gen-user-module
```

Important: make sure you are using efabless/openlane docker tag 2023.05.19 (or newer). 
Previous version may introduce a bug in the `tt_mux` that will result in disconnected `um_ow` signals.

## Fetching the projects

Set `GH_USERNAME` and `GH_TOKEN` environment variables with your GitHub username and a personal access token, respectively.
To generate your GH_TOKEN go to https://github.com/settings/tokens/new . Set the checkboxes for repo and workflow.

Then clone the tt03p5 branch from the tt-support-tools repo and install the required packages:

```
git clone -b tt03p5 https://github.com/tinytapeout/tt-support-tools tt 
```

Finally, run the following commands to fetch the user projects and generate the configuration for the user_project_wrapper:

```
pip install -r tt/requirements.txt
python tt/configure.py --clone-all --fetch-gds --update-caravel
```

## Building the GDS files

```
make tt_ctrl
make tt_mux
python gen_macro_cfg.py
make user_project_wrapper
```

Note: `user_project_wrapper` currently has LVS errors. It should have exactly 205 errors - otherwise, there's something wrong (probably with the PDN not connecting to macros).
