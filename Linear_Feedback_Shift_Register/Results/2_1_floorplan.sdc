###############################################################################
# Created by write_sdc
###############################################################################
current_design LFSR
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 0.4600 [get_ports {clk}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {rst}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Q[0]}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Q[1]}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Q[2]}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Q[3]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
