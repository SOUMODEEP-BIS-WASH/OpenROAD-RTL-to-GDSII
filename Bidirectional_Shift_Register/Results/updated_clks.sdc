###############################################################################
# Created by write_sdc
###############################################################################
current_design bi_shift_reg
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 0.2892 [get_ports {clk}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Din[0]}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Din[1]}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Din[2]}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Din[3]}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {S[0]}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {S[1]}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {ls_bit}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {rs_bit}]
set_input_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {rst}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Dout[0]}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Dout[1]}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Dout[2]}]
set_output_delay 0.0920 -clock [get_clocks {core_clock}] -add_delay [get_ports {Dout[3]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
