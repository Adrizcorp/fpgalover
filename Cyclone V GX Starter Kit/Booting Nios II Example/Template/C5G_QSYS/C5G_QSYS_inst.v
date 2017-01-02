	C5G_QSYS u0 (
		.clk_clk                                                      (<connected-to-clk_clk>),                                                      //                              clk.clk
		.reset_reset_n                                                (<connected-to-reset_reset_n>),                                                //                            reset.reset_n
		.memory_mem_ca                                                (<connected-to-memory_mem_ca>),                                                //                           memory.mem_ca
		.memory_mem_ck                                                (<connected-to-memory_mem_ck>),                                                //                                 .mem_ck
		.memory_mem_ck_n                                              (<connected-to-memory_mem_ck_n>),                                              //                                 .mem_ck_n
		.memory_mem_cke                                               (<connected-to-memory_mem_cke>),                                               //                                 .mem_cke
		.memory_mem_cs_n                                              (<connected-to-memory_mem_cs_n>),                                              //                                 .mem_cs_n
		.memory_mem_dm                                                (<connected-to-memory_mem_dm>),                                                //                                 .mem_dm
		.memory_mem_dq                                                (<connected-to-memory_mem_dq>),                                                //                                 .mem_dq
		.memory_mem_dqs                                               (<connected-to-memory_mem_dqs>),                                               //                                 .mem_dqs
		.memory_mem_dqs_n                                             (<connected-to-memory_mem_dqs_n>),                                             //                                 .mem_dqs_n
		.oct_rzqin                                                    (<connected-to-oct_rzqin>),                                                    //                              oct.rzqin
		.mem_if_lpddr2_emif_status_local_init_done                    (<connected-to-mem_if_lpddr2_emif_status_local_init_done>),                    //        mem_if_lpddr2_emif_status.local_init_done
		.mem_if_lpddr2_emif_status_local_cal_success                  (<connected-to-mem_if_lpddr2_emif_status_local_cal_success>),                  //                                 .local_cal_success
		.mem_if_lpddr2_emif_status_local_cal_fail                     (<connected-to-mem_if_lpddr2_emif_status_local_cal_fail>),                     //                                 .local_cal_fail
		.key_external_connection_export                               (<connected-to-key_external_connection_export>),                               //          key_external_connection.export
		.mem_if_lpddr2_emif_pll_sharing_pll_mem_clk                   (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_mem_clk>),                   //   mem_if_lpddr2_emif_pll_sharing.pll_mem_clk
		.mem_if_lpddr2_emif_pll_sharing_pll_write_clk                 (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_write_clk>),                 //                                 .pll_write_clk
		.mem_if_lpddr2_emif_pll_sharing_pll_locked                    (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_locked>),                    //                                 .pll_locked
		.mem_if_lpddr2_emif_pll_sharing_pll_write_clk_pre_phy_clk     (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_write_clk_pre_phy_clk>),     //                                 .pll_write_clk_pre_phy_clk
		.mem_if_lpddr2_emif_pll_sharing_pll_addr_cmd_clk              (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_addr_cmd_clk>),              //                                 .pll_addr_cmd_clk
		.mem_if_lpddr2_emif_pll_sharing_pll_avl_clk                   (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_avl_clk>),                   //                                 .pll_avl_clk
		.mem_if_lpddr2_emif_pll_sharing_pll_config_clk                (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_config_clk>),                //                                 .pll_config_clk
		.mem_if_lpddr2_emif_pll_sharing_pll_mem_phy_clk               (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_mem_phy_clk>),               //                                 .pll_mem_phy_clk
		.mem_if_lpddr2_emif_pll_sharing_afi_phy_clk                   (<connected-to-mem_if_lpddr2_emif_pll_sharing_afi_phy_clk>),                   //                                 .afi_phy_clk
		.mem_if_lpddr2_emif_pll_sharing_pll_avl_phy_clk               (<connected-to-mem_if_lpddr2_emif_pll_sharing_pll_avl_phy_clk>),               //                                 .pll_avl_phy_clk
		.mem_if_lpddr2_emif_avl_0_waitrequest_n                       (<connected-to-mem_if_lpddr2_emif_avl_0_waitrequest_n>),                       //         mem_if_lpddr2_emif_avl_0.waitrequest_n
		.mem_if_lpddr2_emif_avl_0_beginbursttransfer                  (<connected-to-mem_if_lpddr2_emif_avl_0_beginbursttransfer>),                  //                                 .beginbursttransfer
		.mem_if_lpddr2_emif_avl_0_address                             (<connected-to-mem_if_lpddr2_emif_avl_0_address>),                             //                                 .address
		.mem_if_lpddr2_emif_avl_0_readdatavalid                       (<connected-to-mem_if_lpddr2_emif_avl_0_readdatavalid>),                       //                                 .readdatavalid
		.mem_if_lpddr2_emif_avl_0_readdata                            (<connected-to-mem_if_lpddr2_emif_avl_0_readdata>),                            //                                 .readdata
		.mem_if_lpddr2_emif_avl_0_writedata                           (<connected-to-mem_if_lpddr2_emif_avl_0_writedata>),                           //                                 .writedata
		.mem_if_lpddr2_emif_avl_0_byteenable                          (<connected-to-mem_if_lpddr2_emif_avl_0_byteenable>),                          //                                 .byteenable
		.mem_if_lpddr2_emif_avl_0_read                                (<connected-to-mem_if_lpddr2_emif_avl_0_read>),                                //                                 .read
		.mem_if_lpddr2_emif_avl_0_write                               (<connected-to-mem_if_lpddr2_emif_avl_0_write>),                               //                                 .write
		.mem_if_lpddr2_emif_avl_0_burstcount                          (<connected-to-mem_if_lpddr2_emif_avl_0_burstcount>),                          //                                 .burstcount
		.mm_clock_crossing_bridge_0_m0_waitrequest                    (<connected-to-mm_clock_crossing_bridge_0_m0_waitrequest>),                    //    mm_clock_crossing_bridge_0_m0.waitrequest
		.mm_clock_crossing_bridge_0_m0_readdata                       (<connected-to-mm_clock_crossing_bridge_0_m0_readdata>),                       //                                 .readdata
		.mm_clock_crossing_bridge_0_m0_readdatavalid                  (<connected-to-mm_clock_crossing_bridge_0_m0_readdatavalid>),                  //                                 .readdatavalid
		.mm_clock_crossing_bridge_0_m0_burstcount                     (<connected-to-mm_clock_crossing_bridge_0_m0_burstcount>),                     //                                 .burstcount
		.mm_clock_crossing_bridge_0_m0_writedata                      (<connected-to-mm_clock_crossing_bridge_0_m0_writedata>),                      //                                 .writedata
		.mm_clock_crossing_bridge_0_m0_address                        (<connected-to-mm_clock_crossing_bridge_0_m0_address>),                        //                                 .address
		.mm_clock_crossing_bridge_0_m0_write                          (<connected-to-mm_clock_crossing_bridge_0_m0_write>),                          //                                 .write
		.mm_clock_crossing_bridge_0_m0_read                           (<connected-to-mm_clock_crossing_bridge_0_m0_read>),                           //                                 .read
		.mm_clock_crossing_bridge_0_m0_byteenable                     (<connected-to-mm_clock_crossing_bridge_0_m0_byteenable>),                     //                                 .byteenable
		.mm_clock_crossing_bridge_0_m0_debugaccess                    (<connected-to-mm_clock_crossing_bridge_0_m0_debugaccess>),                    //                                 .debugaccess
		.uart_usb_rxd                                                 (<connected-to-uart_usb_rxd>),                                                 //                         uart_usb.rxd
		.uart_usb_txd                                                 (<connected-to-uart_usb_txd>),                                                 //                                 .txd
		.led_green_export                                             (<connected-to-led_green_export>),                                             //                        led_green.export
		.led_red_export                                               (<connected-to-led_red_export>),                                               //                          led_red.export
		.sd_card_cs                                                   (<connected-to-sd_card_cs>),                                                   //                          sd_card.cs
		.sd_card_sclk                                                 (<connected-to-sd_card_sclk>),                                                 //                                 .sclk
		.sd_card_mosi                                                 (<connected-to-sd_card_mosi>),                                                 //                                 .mosi
		.sd_card_miso                                                 (<connected-to-sd_card_miso>),                                                 //                                 .miso
		.sd_card_cd                                                   (<connected-to-sd_card_cd>),                                                   //                                 .cd
		.sd_card_wp                                                   (<connected-to-sd_card_wp>),                                                   //                                 .wp
		.tristate_conduit_bridge_sram_out_sram_tcm_data_out           (<connected-to-tristate_conduit_bridge_sram_out_sram_tcm_data_out>),           // tristate_conduit_bridge_sram_out.sram_tcm_data_out
		.tristate_conduit_bridge_sram_out_sram_tcm_address_out        (<connected-to-tristate_conduit_bridge_sram_out_sram_tcm_address_out>),        //                                 .sram_tcm_address_out
		.tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out (<connected-to-tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out>), //                                 .sram_tcm_outputenable_n_out
		.tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out   (<connected-to-tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out>),   //                                 .sram_tcm_chipselect_n_out
		.tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out   (<connected-to-tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out>),   //                                 .sram_tcm_byteenable_n_out
		.tristate_conduit_bridge_sram_out_sram_tcm_write_n_out        (<connected-to-tristate_conduit_bridge_sram_out_sram_tcm_write_n_out>),        //                                 .sram_tcm_write_n_out
		.switches_export                                              (<connected-to-switches_export>)                                               //                         switches.export
	);

