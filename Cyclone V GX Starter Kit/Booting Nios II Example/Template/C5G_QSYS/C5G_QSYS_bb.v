
module C5G_QSYS (
	clk_clk,
	reset_reset_n,
	memory_mem_ca,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_dm,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	oct_rzqin,
	mem_if_lpddr2_emif_status_local_init_done,
	mem_if_lpddr2_emif_status_local_cal_success,
	mem_if_lpddr2_emif_status_local_cal_fail,
	key_external_connection_export,
	mem_if_lpddr2_emif_pll_sharing_pll_mem_clk,
	mem_if_lpddr2_emif_pll_sharing_pll_write_clk,
	mem_if_lpddr2_emif_pll_sharing_pll_locked,
	mem_if_lpddr2_emif_pll_sharing_pll_write_clk_pre_phy_clk,
	mem_if_lpddr2_emif_pll_sharing_pll_addr_cmd_clk,
	mem_if_lpddr2_emif_pll_sharing_pll_avl_clk,
	mem_if_lpddr2_emif_pll_sharing_pll_config_clk,
	mem_if_lpddr2_emif_pll_sharing_pll_mem_phy_clk,
	mem_if_lpddr2_emif_pll_sharing_afi_phy_clk,
	mem_if_lpddr2_emif_pll_sharing_pll_avl_phy_clk,
	mem_if_lpddr2_emif_avl_0_waitrequest_n,
	mem_if_lpddr2_emif_avl_0_beginbursttransfer,
	mem_if_lpddr2_emif_avl_0_address,
	mem_if_lpddr2_emif_avl_0_readdatavalid,
	mem_if_lpddr2_emif_avl_0_readdata,
	mem_if_lpddr2_emif_avl_0_writedata,
	mem_if_lpddr2_emif_avl_0_byteenable,
	mem_if_lpddr2_emif_avl_0_read,
	mem_if_lpddr2_emif_avl_0_write,
	mem_if_lpddr2_emif_avl_0_burstcount,
	mm_clock_crossing_bridge_0_m0_waitrequest,
	mm_clock_crossing_bridge_0_m0_readdata,
	mm_clock_crossing_bridge_0_m0_readdatavalid,
	mm_clock_crossing_bridge_0_m0_burstcount,
	mm_clock_crossing_bridge_0_m0_writedata,
	mm_clock_crossing_bridge_0_m0_address,
	mm_clock_crossing_bridge_0_m0_write,
	mm_clock_crossing_bridge_0_m0_read,
	mm_clock_crossing_bridge_0_m0_byteenable,
	mm_clock_crossing_bridge_0_m0_debugaccess,
	uart_usb_rxd,
	uart_usb_txd,
	led_green_export,
	led_red_export,
	sd_card_cs,
	sd_card_sclk,
	sd_card_mosi,
	sd_card_miso,
	sd_card_cd,
	sd_card_wp,
	tristate_conduit_bridge_sram_out_sram_tcm_data_out,
	tristate_conduit_bridge_sram_out_sram_tcm_address_out,
	tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out,
	tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out,
	tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out,
	tristate_conduit_bridge_sram_out_sram_tcm_write_n_out,
	switches_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[9:0]	memory_mem_ca;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[3:0]	memory_mem_dm;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	input		oct_rzqin;
	output		mem_if_lpddr2_emif_status_local_init_done;
	output		mem_if_lpddr2_emif_status_local_cal_success;
	output		mem_if_lpddr2_emif_status_local_cal_fail;
	input	[3:0]	key_external_connection_export;
	output		mem_if_lpddr2_emif_pll_sharing_pll_mem_clk;
	output		mem_if_lpddr2_emif_pll_sharing_pll_write_clk;
	output		mem_if_lpddr2_emif_pll_sharing_pll_locked;
	output		mem_if_lpddr2_emif_pll_sharing_pll_write_clk_pre_phy_clk;
	output		mem_if_lpddr2_emif_pll_sharing_pll_addr_cmd_clk;
	output		mem_if_lpddr2_emif_pll_sharing_pll_avl_clk;
	output		mem_if_lpddr2_emif_pll_sharing_pll_config_clk;
	output		mem_if_lpddr2_emif_pll_sharing_pll_mem_phy_clk;
	output		mem_if_lpddr2_emif_pll_sharing_afi_phy_clk;
	output		mem_if_lpddr2_emif_pll_sharing_pll_avl_phy_clk;
	output		mem_if_lpddr2_emif_avl_0_waitrequest_n;
	input		mem_if_lpddr2_emif_avl_0_beginbursttransfer;
	input	[26:0]	mem_if_lpddr2_emif_avl_0_address;
	output		mem_if_lpddr2_emif_avl_0_readdatavalid;
	output	[31:0]	mem_if_lpddr2_emif_avl_0_readdata;
	input	[31:0]	mem_if_lpddr2_emif_avl_0_writedata;
	input	[3:0]	mem_if_lpddr2_emif_avl_0_byteenable;
	input		mem_if_lpddr2_emif_avl_0_read;
	input		mem_if_lpddr2_emif_avl_0_write;
	input	[2:0]	mem_if_lpddr2_emif_avl_0_burstcount;
	input		mm_clock_crossing_bridge_0_m0_waitrequest;
	input	[31:0]	mm_clock_crossing_bridge_0_m0_readdata;
	input		mm_clock_crossing_bridge_0_m0_readdatavalid;
	output	[3:0]	mm_clock_crossing_bridge_0_m0_burstcount;
	output	[31:0]	mm_clock_crossing_bridge_0_m0_writedata;
	output	[28:0]	mm_clock_crossing_bridge_0_m0_address;
	output		mm_clock_crossing_bridge_0_m0_write;
	output		mm_clock_crossing_bridge_0_m0_read;
	output	[3:0]	mm_clock_crossing_bridge_0_m0_byteenable;
	output		mm_clock_crossing_bridge_0_m0_debugaccess;
	input		uart_usb_rxd;
	output		uart_usb_txd;
	output	[7:0]	led_green_export;
	output	[9:0]	led_red_export;
	output		sd_card_cs;
	output		sd_card_sclk;
	output		sd_card_mosi;
	input		sd_card_miso;
	input		sd_card_cd;
	input		sd_card_wp;
	inout	[15:0]	tristate_conduit_bridge_sram_out_sram_tcm_data_out;
	output	[18:0]	tristate_conduit_bridge_sram_out_sram_tcm_address_out;
	output	[0:0]	tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out;
	output	[0:0]	tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out;
	output	[1:0]	tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out;
	output	[0:0]	tristate_conduit_bridge_sram_out_sram_tcm_write_n_out;
	input	[7:0]	switches_export;
endmodule
