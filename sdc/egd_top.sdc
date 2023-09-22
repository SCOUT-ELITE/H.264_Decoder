###############################################################################
# Created by write_sdc
# Fri Sep 22 13:19:37 2023
###############################################################################
current_design egd_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[7]}]
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[6]}]
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[5]}]
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[4]}]
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[3]}]
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[2]}]
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[1]}]
set_load -pin_load 0.1900 [get_ports {exp_golomb_decoding_output[0]}]
set_load -pin_load 0.1900 [get_ports {half_fill_counter[2]}]
set_load -pin_load 0.1900 [get_ports {half_fill_counter[1]}]
set_load -pin_load 0.1900 [get_ports {half_fill_counter[0]}]
set_load -pin_load 0.1900 [get_ports {reset_counter[3]}]
set_load -pin_load 0.1900 [get_ports {reset_counter[2]}]
set_load -pin_load 0.1900 [get_ports {reset_counter[1]}]
set_load -pin_load 0.1900 [get_ports {reset_counter[0]}]
set_input_transition 0.6100 [get_ports {clk}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
