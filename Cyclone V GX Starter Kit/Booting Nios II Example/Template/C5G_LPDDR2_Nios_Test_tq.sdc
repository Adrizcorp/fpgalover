## Generated SDC file "C5G_LPDDR2_Nios_Test_tq.sdc"

## Copyright (C) 1991-2014 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

## DATE    "Tue Jun  3 13:53:52 2014"

##
## DEVICE  "5CGXFC5C6F27C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 33.333 -waveform { 0.000 16.666 } [get_ports {altera_reserved_tck}]
create_clock -name {CLOCK_125_p} -period 8.000 -waveform { 0.000 4.000 } [get_ports {CLOCK_125_p}]
create_clock -name {CLOCK_50_B3B} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B3B}]
create_clock -name {CLOCK_50_B5B} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B5B}]
create_clock -name {CLOCK_50_B6A} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B6A}]
create_clock -name {CLOCK_50_B7A} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B7A}]
create_clock -name {CLOCK_50_B8A} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B8A}]
create_clock -name {DDR2LP_DQS_p[0]_IN} -period 3.030 -waveform { 0.000 1.515 } [get_ports {DDR2LP_DQS_p[0]}] -add
create_clock -name {DDR2LP_DQS_p[1]_IN} -period 3.030 -waveform { 0.000 1.515 } [get_ports {DDR2LP_DQS_p[1]}] -add
create_clock -name {DDR2LP_DQS_p[2]_IN} -period 3.030 -waveform { 0.000 1.515 } [get_ports {DDR2LP_DQS_p[2]}] -add
create_clock -name {DDR2LP_DQS_p[3]_IN} -period 3.030 -waveform { 0.000 1.515 } [get_ports {DDR2LP_DQS_p[3]}] -add


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|refclkin}] -duty_cycle 50.000 -multiply_by 132 -divide_by 25 -master_clock {CLOCK_125_p} [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] 
create_generated_clock -name {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 2 -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 4 -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 10 -phase 355.509 -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 30 -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 2 -phase 269.941 -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|vco0ph[0]}] -duty_cycle 50.000 -multiply_by 1 -divide_by 10 -phase 355.509 -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]} [get_pins {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_registers {u0|mem_if_lpddr2_emif|p0|umemphy|uio_pads|dq_ddio[*].ubidir_dq_dqs|altdq_dqs2_inst|dqs_enable_ctrl~DQSENABLEOUT_DFF}] 
create_generated_clock -name {DDR2LP_CK_p} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_CK_p}] 
create_generated_clock -name {DDR2LP_CK_n} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} -invert [get_ports {DDR2LP_CK_n}] 
create_generated_clock -name {DDR2LP_DQS_p[0]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_p[0]}] -add
create_generated_clock -name {DDR2LP_DQS_p[1]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_p[1]}] -add
create_generated_clock -name {DDR2LP_DQS_p[2]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_p[2]}] -add
create_generated_clock -name {DDR2LP_DQS_p[3]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_p[3]}] -add
create_generated_clock -name {DDR2LP_DQS_n[0]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_n[0]}] 
create_generated_clock -name {DDR2LP_DQS_n[1]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_n[1]}] 
create_generated_clock -name {DDR2LP_DQS_n[2]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_n[2]}] 
create_generated_clock -name {DDR2LP_DQS_n[3]_OUT} -source [get_pins {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk} [get_ports {DDR2LP_DQS_n[3]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {DDR2LP_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_125_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_n}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR2LP_CK_p}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~FRACTIONAL_PLL|vcoph[0]}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_n}] -setup 0.340  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_n}] -hold 0.120  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_n}] -setup 0.340  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_n}] -hold 0.120  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_p}] -setup 0.340  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_p}] -hold 0.120  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_p}] -setup 0.340  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_p}] -hold 0.120  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_n}] -setup 0.340  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_n}] -hold 0.120  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_n}] -setup 0.340  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_n}] -hold 0.120  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_p}] -setup 0.340  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {DDR2LP_CK_p}] -hold 0.120  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_p}] -setup 0.340  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {DDR2LP_CK_p}] -hold 0.120  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -rise_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -fall_to [get_clocks {CLOCK_125_p}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {CLOCK_125_p}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {CLOCK_125_p}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {CLOCK_125_p}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {CLOCK_125_p}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {CLOCK_125_p}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -rise_to [get_clocks {CLOCK_125_p}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {CLOCK_125_p}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_125_p}] -fall_to [get_clocks {CLOCK_125_p}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[0]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[0]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[1]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[1]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[2]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[2]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[3]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[3]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[4]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[4]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[5]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[5]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[6]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[6]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  0.153 [get_ports {DDR2LP_DQ[7]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_IN}]  -0.415 [get_ports {DDR2LP_DQ[7]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[8]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[8]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[9]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[9]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[10]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[10]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[11]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[11]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[12]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[12]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[13]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[13]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[14]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[14]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  0.153 [get_ports {DDR2LP_DQ[15]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_IN}]  -0.415 [get_ports {DDR2LP_DQ[15]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[16]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[16]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[17]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[17]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[18]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[18]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[19]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[19]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[20]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[20]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[21]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[21]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[22]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[22]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  0.153 [get_ports {DDR2LP_DQ[23]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_IN}]  -0.415 [get_ports {DDR2LP_DQ[23]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[24]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[24]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[25]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[25]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[26]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[26]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[27]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[27]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[28]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[28]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[29]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[29]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[30]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[30]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  0.153 [get_ports {DDR2LP_DQ[31]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_IN}]  -0.415 [get_ports {DDR2LP_DQ[31]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[4]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[4]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[4]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[4]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[5]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[5]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[5]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[5]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[6]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[6]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[6]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[6]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[7]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[7]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[7]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[7]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[8]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[8]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[8]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[8]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CA[9]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CA[9]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CA[9]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CA[9]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CKE[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CKE[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CKE[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CKE[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_n}]  0.415 [get_ports {DDR2LP_CS_n[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_n}]  -0.400 [get_ports {DDR2LP_CS_n[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  0.415 [get_ports {DDR2LP_CS_n[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  -0.400 [get_ports {DDR2LP_CS_n[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  -0.350 [get_ports {DDR2LP_DQS_p[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  3.380 [get_ports {DDR2LP_DQS_p[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  -0.350 [get_ports {DDR2LP_DQS_p[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  3.380 [get_ports {DDR2LP_DQS_p[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  -0.350 [get_ports {DDR2LP_DQS_p[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  3.380 [get_ports {DDR2LP_DQS_p[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_CK_p}]  -0.350 [get_ports {DDR2LP_DQS_p[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_CK_p}]  3.380 [get_ports {DDR2LP_DQS_p[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[4]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[4]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[4]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[4]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[5]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[5]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[5]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[5]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[6]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[6]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[6]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[6]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[7]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[7]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  0.431 [get_ports {DDR2LP_DQ[7]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[0]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[7]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[8]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[8]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[8]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[8]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[9]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[9]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[9]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[9]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[10]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[10]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[10]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[10]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[11]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[11]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[11]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[11]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[12]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[12]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[12]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[12]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[13]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[13]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[13]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[13]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[14]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[14]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[14]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[14]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[15]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[15]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  0.431 [get_ports {DDR2LP_DQ[15]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[1]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[15]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[16]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[16]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[16]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[16]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[17]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[17]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[17]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[17]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[18]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[18]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[18]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[18]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[19]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[19]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[19]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[19]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[20]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[20]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[20]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[20]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[21]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[21]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[21]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[21]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[22]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[22]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[22]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[22]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[23]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[23]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  0.431 [get_ports {DDR2LP_DQ[23]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[2]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[23]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[24]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[24]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[24]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[24]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[25]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[25]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[25]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[25]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[26]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[26]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[26]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[26]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[27]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[27]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[27]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[27]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[28]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[28]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[28]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[28]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[29]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[29]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[29]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[29]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[30]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[30]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[30]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[30]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[31]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_n[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[31]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  0.431 [get_ports {DDR2LP_DQ[31]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR2LP_DQS_p[3]_OUT}]  -0.412 [get_ports {DDR2LP_DQ[31]}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR2LP_DQS_p[0]_IN}] -group [get_clocks {DDR2LP_DQS_p[0]_OUT DDR2LP_DQS_n[0]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR2LP_DQS_p[1]_IN}] -group [get_clocks {DDR2LP_DQS_p[1]_OUT DDR2LP_DQS_n[1]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR2LP_DQS_p[2]_IN}] -group [get_clocks {DDR2LP_DQS_p[2]_OUT DDR2LP_DQS_n[2]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR2LP_DQS_p[3]_IN}] -group [get_clocks {DDR2LP_DQS_p[3]_OUT DDR2LP_DQS_n[3]_OUT}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]
set_false_path  -fall_from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {DDR2LP_CK_p}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {DDR2LP_DQS_p[0]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {DDR2LP_DQS_p[1]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {DDR2LP_DQS_p[2]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {DDR2LP_DQS_p[3]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {*_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]
set_false_path  -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]
set_false_path  -from  [get_clocks *]  -to  [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -from [get_keepers {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|altera_mem_if_hard_memory_controller_top_cyclonev:c0|hmc_inst~FF_*}] -to [get_keepers {C5G_QSYS:u0|C5G_QSYS_lpddr2_status:lpddr2_status|readdata[*]}]
set_false_path -from [get_keepers {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0:p0|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_memphy:umemphy|hphy_inst~FF_*}] -to [get_keepers {C5G_QSYS:u0|C5G_QSYS_lpddr2_status:lpddr2_status|readdata[*]}]
set_false_path -from [get_keepers {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0:p0|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_memphy:umemphy|hphy_inst~FF_35}] -to [get_keepers {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0:p0|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_memphy:umemphy|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_io_pads:uio_pads|C5G_QSYS_mem_if_lpddr2_emif_p0_altdqdqs:dq_ddio[3].ubidir_dq_dqs|altdq_dqs2_acv_connect_to_hard_phy_cyclonev_lpddr2:altdq_dqs2_inst|input_path_gen[*].read_fifo~READ_ADDRESS_DFF}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -fall_from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -to [get_ports {{DDR2LP_CA[0]} {DDR2LP_CA[1]} {DDR2LP_CA[2]} {DDR2LP_CA[3]} {DDR2LP_CA[4]} {DDR2LP_CA[5]} {DDR2LP_CA[6]} {DDR2LP_CA[7]} {DDR2LP_CA[8]} {DDR2LP_CA[9]} {DDR2LP_CKE[0]} {DDR2LP_CS_n[0]}}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*lfifo~LFIFO_OUT_RDATA_VALID_DFF}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*lfifo~RD_LATENCY_DFF*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|*altdq_dqs2_inst|*output_path_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|*altdq_dqs2_inst|extra_output_pad_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*c0|hmc_inst~FF_*}]
set_false_path -to [get_ports {DDR2LP_DQS_n[0]}]
set_false_path -to [get_ports {DDR2LP_DQS_n[1]}]
set_false_path -to [get_ports {DDR2LP_DQS_n[2]}]
set_false_path -to [get_ports {DDR2LP_DQS_n[3]}]
set_false_path -to [get_ports {DDR2LP_CK_p}]
set_false_path -to [get_ports {DDR2LP_CK_n}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR2LP_DQS_p[0]_OUT}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR2LP_DQS_p[1]_OUT}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR2LP_DQS_p[2]_OUT}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR2LP_DQS_p[3]_OUT}]
set_false_path -from [get_keepers {u0|mem_if_lpddr2_emif|p0|umemphy|afi_half_clk_reg}] -to [get_keepers {u0|mem_if_lpddr2_emif|p0|umemphy|afi_half_clk_reg}]
set_false_path -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*altdq_dqs2_inst|dqs_enable_ctrl~*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*altdq_dqs2_inst|dqs_delay_chain~POSTAMBLE_DFF}]
set_false_path -from [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_nios2_oci_break:the_C5G_QSYS_nios2_qsys_nios2_oci_break|break_readreg*}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_tck:the_C5G_QSYS_nios2_qsys_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_nios2_oci_debug:the_C5G_QSYS_nios2_qsys_nios2_oci_debug|*resetlatch}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_tck:the_C5G_QSYS_nios2_qsys_jtag_debug_module_tck|*sr[33]}]
set_false_path -from [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_nios2_oci_debug:the_C5G_QSYS_nios2_qsys_nios2_oci_debug|monitor_ready}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_tck:the_C5G_QSYS_nios2_qsys_jtag_debug_module_tck|*sr[0]}]
set_false_path -from [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_nios2_oci_debug:the_C5G_QSYS_nios2_qsys_nios2_oci_debug|monitor_error}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_tck:the_C5G_QSYS_nios2_qsys_jtag_debug_module_tck|*sr[34]}]
set_false_path -from [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_nios2_ocimem:the_C5G_QSYS_nios2_qsys_nios2_ocimem|*MonDReg*}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_tck:the_C5G_QSYS_nios2_qsys_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_tck:the_C5G_QSYS_nios2_qsys_jtag_debug_module_tck|*sr*}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_sysclk:the_C5G_QSYS_nios2_qsys_jtag_debug_module_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper:the_C5G_QSYS_nios2_qsys_jtag_debug_module_wrapper|C5G_QSYS_nios2_qsys_jtag_debug_module_sysclk:the_C5G_QSYS_nios2_qsys_jtag_debug_module_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*C5G_QSYS_nios2_qsys:*|C5G_QSYS_nios2_qsys_nios2_oci:the_C5G_QSYS_nios2_qsys_nios2_oci|C5G_QSYS_nios2_qsys_nios2_oci_debug:the_C5G_QSYS_nios2_qsys_nios2_oci_debug|monitor_go}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -start -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] 5
set_multicycle_path -hold -start -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] 4
set_multicycle_path -hold -end -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] 1
set_multicycle_path -setup -end -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] 1
set_multicycle_path -setup -end -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]  -to  [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] 1
set_multicycle_path -setup -end -from  [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -setup -end -to [get_registers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -hold -end -to [get_registers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -setup -end -from [get_registers {*:u0|*:mem_if_lpddr2_emif|*s0|*sequencer_trk_mgr_inst|avl_*_ack*}] -to [get_registers {*:u0|*:mem_if_lpddr2_emif|*c0|hmc_inst~FF_*}] 3
set_multicycle_path -hold -end -from [get_registers {*:u0|*:mem_if_lpddr2_emif|*s0|*sequencer_trk_mgr_inst|avl_*_ack*}] -to [get_registers {*:u0|*:mem_if_lpddr2_emif|*c0|hmc_inst~FF_*}] 2
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_lpddr2_emif|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 1


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports {DDR2LP_DQ[0]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[1]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[2]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[3]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[4]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[5]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[6]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[7]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[8]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[9]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[10]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[11]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[12]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[13]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[14]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[15]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[16]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[17]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[18]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[19]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[20]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[21]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[22]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[23]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[24]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[25]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[26]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[27]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[28]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[29]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[30]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR2LP_DQ[31]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_ports {DDR2LP_DQ[0]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[1]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[2]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[3]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[4]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[5]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[6]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[7]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[8]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[9]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[10]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[11]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[12]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[13]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[14]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[15]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[16]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[17]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[18]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[19]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[20]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[21]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[22]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[23]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[24]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[25]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[26]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[27]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[28]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[29]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[30]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515
set_min_delay -from [get_ports {DDR2LP_DQ[31]}] -to [get_keepers {{*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_lpddr2_emif|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.515


#**************************************************************
# Set Input Transition
#**************************************************************

