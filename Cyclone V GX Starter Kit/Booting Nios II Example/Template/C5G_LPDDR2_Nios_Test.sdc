#**************************************************************
# This .sdc file is created by Terasic Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************
create_clock -period 8 [get_ports CLOCK_125_p]
create_clock -period 20 [get_ports CLOCK_50_B3B]
create_clock -period 20 [get_ports CLOCK_50_B5B]
create_clock -period 20 [get_ports CLOCK_50_B6A]
create_clock -period 20 [get_ports CLOCK_50_B7A]
create_clock -period 20 [get_ports CLOCK_50_B8A]

#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************
#set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
#set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
#set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
#set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
#set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
#set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]

# Three of the lpddr2_status registers cause failures to close timing
#
# constrain by clock to avoid 7+ nsec failure to close timing
#set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {CLOCK_125_p}]
# same constraint, but by path
set_false_path -from {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|altera_mem_if_hard_memory_controller_top_cyclonev:c0|hmc_inst~FF_*} -to {C5G_QSYS:u0|C5G_QSYS_lpddr2_status:lpddr2_status|readdata[*]}
# Another path that fails by 6+ nsec
set_false_path -from {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0:p0|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_memphy:umemphy|hphy_inst~FF_*} -to {C5G_QSYS:u0|C5G_QSYS_lpddr2_status:lpddr2_status|readdata[*]}

# These two commands fix lots of failures to close timing from -0.460 nsec down to about 0.003 nsec, but are they legitimate?
set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll5~PLL_OUTPUT_COUNTER|divclk}]
set_false_path -from [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|mem_if_lpddr2_emif|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]

# And another command to fix the removal slack violation for the read_fifo
set_false_path -from {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0:p0|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_memphy:umemphy|hphy_inst~FF_35} -to {C5G_QSYS:u0|C5G_QSYS_mem_if_lpddr2_emif:mem_if_lpddr2_emif|C5G_QSYS_mem_if_lpddr2_emif_p0:p0|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_memphy:umemphy|C5G_QSYS_mem_if_lpddr2_emif_p0_acv_hard_io_pads:uio_pads|C5G_QSYS_mem_if_lpddr2_emif_p0_altdqdqs:dq_ddio[3].ubidir_dq_dqs|altdq_dqs2_acv_connect_to_hard_phy_cyclonev_lpddr2:altdq_dqs2_inst|input_path_gen[*].read_fifo~READ_ADDRESS_DFF}
#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************



