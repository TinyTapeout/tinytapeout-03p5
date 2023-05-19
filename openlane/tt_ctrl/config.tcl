# PLEASE DO NOT EDIT THIS FILE!
# If you get stuck with this config, please open an issue or get in touch via the discord.

# Configuration docs: https://openlane.readthedocs.io/en/latest/reference/configuration.html

# User config
set script_dir [file dirname [file normalize [info script]]]

# read some user config that is written by the setup.py program.
# - the name of the module is defined
# - the list of source files
set ::env(DESIGN_NAME) tt_ctrl
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/tt_ctrl.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_buf.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_dfrbp.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_diode.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_inv.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_mux4.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_tbuf.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_tbuf_pol.v \
    $::env(DESIGN_DIR)/../../tt-multiplexer/proto/prim_sky130/tt_prim_zbuf.v"

# save some time
set ::env(RUN_KLAYOUT_XOR) 0
set ::env(RUN_KLAYOUT_DRC) 0

# don't put clock buffers on the outputs
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

# allow use of specific sky130 cells
set ::env(SYNTH_READ_BLACKBOX_LIB) 1

# put all the pins on the left
#set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

# reduce wasted space
set ::env(TOP_MARGIN_MULT) 2
set ::env(BOTTOM_MARGIN_MULT) 2

# absolute die size
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 100 100"
set ::env(FP_CORE_UTIL) 55

set ::env(PL_BASIC_PLACEMENT) {0}
set ::env(GRT_ALLOW_CONGESTION) "1"

set ::env(FP_IO_HLENGTH) 2
set ::env(FP_IO_VLENGTH) 2

# use alternative efabless decap cells to solve LI density issue
set ::env(DECAP_CELL) "\
    sky130_fd_sc_hd__decap_3 \
    sky130_fd_sc_hd__decap_4 \
    sky130_fd_sc_hd__decap_6 \
    sky130_fd_sc_hd__decap_8 \
    sky130_ef_sc_hd__decap_12"

# no clock
set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CLOCK_PERIOD) "20"
set ::env(CLOCK_PORT) {clk}

# hold/slack margin
# set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.8 
# set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.8 

# don't use power rings or met5
set ::env(DESIGN_IS_CORE) 0
set ::env(RT_MAX_LAYER) {met4}

# connect to first digital rails
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]
