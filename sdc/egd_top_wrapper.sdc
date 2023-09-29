###############################################################################
# Created by write_sdc
# Fri Sep 29 01:35:22 2023
###############################################################################
current_design egd_top_wrapper
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 [get_ports {wb_clk_i}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source -min 4.6500 [get_clocks {clk}]
set_clock_latency -source -max 5.5700 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[7]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[6]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[5]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[4]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[3]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[2]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[1]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_15_8[0]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_18_16[2]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_18_16[1]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_18_16[0]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_22_19[3]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_22_19[2]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_22_19[1]}]
set_load -pin_load 0.1900 [get_ports {la_data_out_22_19[0]}]
set_input_transition 0.6100 [get_ports {wb_clk_i}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
