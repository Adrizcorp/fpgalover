	component C5G_QSYS is
		port (
			clk_clk                                                      : in    std_logic                     := 'X';             -- clk
			reset_reset_n                                                : in    std_logic                     := 'X';             -- reset_n
			memory_mem_ca                                                : out   std_logic_vector(9 downto 0);                     -- mem_ca
			memory_mem_ck                                                : out   std_logic_vector(0 downto 0);                     -- mem_ck
			memory_mem_ck_n                                              : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			memory_mem_cke                                               : out   std_logic_vector(0 downto 0);                     -- mem_cke
			memory_mem_cs_n                                              : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			memory_mem_dm                                                : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_mem_dq                                                : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                                               : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                                             : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			oct_rzqin                                                    : in    std_logic                     := 'X';             -- rzqin
			mem_if_lpddr2_emif_status_local_init_done                    : out   std_logic;                                        -- local_init_done
			mem_if_lpddr2_emif_status_local_cal_success                  : out   std_logic;                                        -- local_cal_success
			mem_if_lpddr2_emif_status_local_cal_fail                     : out   std_logic;                                        -- local_cal_fail
			key_external_connection_export                               : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			mem_if_lpddr2_emif_pll_sharing_pll_mem_clk                   : out   std_logic;                                        -- pll_mem_clk
			mem_if_lpddr2_emif_pll_sharing_pll_write_clk                 : out   std_logic;                                        -- pll_write_clk
			mem_if_lpddr2_emif_pll_sharing_pll_locked                    : out   std_logic;                                        -- pll_locked
			mem_if_lpddr2_emif_pll_sharing_pll_write_clk_pre_phy_clk     : out   std_logic;                                        -- pll_write_clk_pre_phy_clk
			mem_if_lpddr2_emif_pll_sharing_pll_addr_cmd_clk              : out   std_logic;                                        -- pll_addr_cmd_clk
			mem_if_lpddr2_emif_pll_sharing_pll_avl_clk                   : out   std_logic;                                        -- pll_avl_clk
			mem_if_lpddr2_emif_pll_sharing_pll_config_clk                : out   std_logic;                                        -- pll_config_clk
			mem_if_lpddr2_emif_pll_sharing_pll_mem_phy_clk               : out   std_logic;                                        -- pll_mem_phy_clk
			mem_if_lpddr2_emif_pll_sharing_afi_phy_clk                   : out   std_logic;                                        -- afi_phy_clk
			mem_if_lpddr2_emif_pll_sharing_pll_avl_phy_clk               : out   std_logic;                                        -- pll_avl_phy_clk
			mem_if_lpddr2_emif_avl_0_waitrequest_n                       : out   std_logic;                                        -- waitrequest_n
			mem_if_lpddr2_emif_avl_0_beginbursttransfer                  : in    std_logic                     := 'X';             -- beginbursttransfer
			mem_if_lpddr2_emif_avl_0_address                             : in    std_logic_vector(26 downto 0) := (others => 'X'); -- address
			mem_if_lpddr2_emif_avl_0_readdatavalid                       : out   std_logic;                                        -- readdatavalid
			mem_if_lpddr2_emif_avl_0_readdata                            : out   std_logic_vector(31 downto 0);                    -- readdata
			mem_if_lpddr2_emif_avl_0_writedata                           : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			mem_if_lpddr2_emif_avl_0_byteenable                          : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			mem_if_lpddr2_emif_avl_0_read                                : in    std_logic                     := 'X';             -- read
			mem_if_lpddr2_emif_avl_0_write                               : in    std_logic                     := 'X';             -- write
			mem_if_lpddr2_emif_avl_0_burstcount                          : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
			mm_clock_crossing_bridge_0_m0_waitrequest                    : in    std_logic                     := 'X';             -- waitrequest
			mm_clock_crossing_bridge_0_m0_readdata                       : in    std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			mm_clock_crossing_bridge_0_m0_readdatavalid                  : in    std_logic                     := 'X';             -- readdatavalid
			mm_clock_crossing_bridge_0_m0_burstcount                     : out   std_logic_vector(3 downto 0);                     -- burstcount
			mm_clock_crossing_bridge_0_m0_writedata                      : out   std_logic_vector(31 downto 0);                    -- writedata
			mm_clock_crossing_bridge_0_m0_address                        : out   std_logic_vector(28 downto 0);                    -- address
			mm_clock_crossing_bridge_0_m0_write                          : out   std_logic;                                        -- write
			mm_clock_crossing_bridge_0_m0_read                           : out   std_logic;                                        -- read
			mm_clock_crossing_bridge_0_m0_byteenable                     : out   std_logic_vector(3 downto 0);                     -- byteenable
			mm_clock_crossing_bridge_0_m0_debugaccess                    : out   std_logic;                                        -- debugaccess
			uart_usb_rxd                                                 : in    std_logic                     := 'X';             -- rxd
			uart_usb_txd                                                 : out   std_logic;                                        -- txd
			led_green_export                                             : out   std_logic_vector(7 downto 0);                     -- export
			led_red_export                                               : out   std_logic_vector(9 downto 0);                     -- export
			sd_card_cs                                                   : out   std_logic;                                        -- cs
			sd_card_sclk                                                 : out   std_logic;                                        -- sclk
			sd_card_mosi                                                 : out   std_logic;                                        -- mosi
			sd_card_miso                                                 : in    std_logic                     := 'X';             -- miso
			sd_card_cd                                                   : in    std_logic                     := 'X';             -- cd
			sd_card_wp                                                   : in    std_logic                     := 'X';             -- wp
			tristate_conduit_bridge_sram_out_sram_tcm_data_out           : inout std_logic_vector(15 downto 0) := (others => 'X'); -- sram_tcm_data_out
			tristate_conduit_bridge_sram_out_sram_tcm_address_out        : out   std_logic_vector(18 downto 0);                    -- sram_tcm_address_out
			tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out : out   std_logic_vector(0 downto 0);                     -- sram_tcm_outputenable_n_out
			tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out   : out   std_logic_vector(0 downto 0);                     -- sram_tcm_chipselect_n_out
			tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out   : out   std_logic_vector(1 downto 0);                     -- sram_tcm_byteenable_n_out
			tristate_conduit_bridge_sram_out_sram_tcm_write_n_out        : out   std_logic_vector(0 downto 0);                     -- sram_tcm_write_n_out
			switches_export                                              : in    std_logic_vector(7 downto 0)  := (others => 'X')  -- export
		);
	end component C5G_QSYS;

	u0 : component C5G_QSYS
		port map (
			clk_clk                                                      => CONNECTED_TO_clk_clk,                                                      --                              clk.clk
			reset_reset_n                                                => CONNECTED_TO_reset_reset_n,                                                --                            reset.reset_n
			memory_mem_ca                                                => CONNECTED_TO_memory_mem_ca,                                                --                           memory.mem_ca
			memory_mem_ck                                                => CONNECTED_TO_memory_mem_ck,                                                --                                 .mem_ck
			memory_mem_ck_n                                              => CONNECTED_TO_memory_mem_ck_n,                                              --                                 .mem_ck_n
			memory_mem_cke                                               => CONNECTED_TO_memory_mem_cke,                                               --                                 .mem_cke
			memory_mem_cs_n                                              => CONNECTED_TO_memory_mem_cs_n,                                              --                                 .mem_cs_n
			memory_mem_dm                                                => CONNECTED_TO_memory_mem_dm,                                                --                                 .mem_dm
			memory_mem_dq                                                => CONNECTED_TO_memory_mem_dq,                                                --                                 .mem_dq
			memory_mem_dqs                                               => CONNECTED_TO_memory_mem_dqs,                                               --                                 .mem_dqs
			memory_mem_dqs_n                                             => CONNECTED_TO_memory_mem_dqs_n,                                             --                                 .mem_dqs_n
			oct_rzqin                                                    => CONNECTED_TO_oct_rzqin,                                                    --                              oct.rzqin
			mem_if_lpddr2_emif_status_local_init_done                    => CONNECTED_TO_mem_if_lpddr2_emif_status_local_init_done,                    --        mem_if_lpddr2_emif_status.local_init_done
			mem_if_lpddr2_emif_status_local_cal_success                  => CONNECTED_TO_mem_if_lpddr2_emif_status_local_cal_success,                  --                                 .local_cal_success
			mem_if_lpddr2_emif_status_local_cal_fail                     => CONNECTED_TO_mem_if_lpddr2_emif_status_local_cal_fail,                     --                                 .local_cal_fail
			key_external_connection_export                               => CONNECTED_TO_key_external_connection_export,                               --          key_external_connection.export
			mem_if_lpddr2_emif_pll_sharing_pll_mem_clk                   => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_mem_clk,                   --   mem_if_lpddr2_emif_pll_sharing.pll_mem_clk
			mem_if_lpddr2_emif_pll_sharing_pll_write_clk                 => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_write_clk,                 --                                 .pll_write_clk
			mem_if_lpddr2_emif_pll_sharing_pll_locked                    => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_locked,                    --                                 .pll_locked
			mem_if_lpddr2_emif_pll_sharing_pll_write_clk_pre_phy_clk     => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_write_clk_pre_phy_clk,     --                                 .pll_write_clk_pre_phy_clk
			mem_if_lpddr2_emif_pll_sharing_pll_addr_cmd_clk              => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_addr_cmd_clk,              --                                 .pll_addr_cmd_clk
			mem_if_lpddr2_emif_pll_sharing_pll_avl_clk                   => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_avl_clk,                   --                                 .pll_avl_clk
			mem_if_lpddr2_emif_pll_sharing_pll_config_clk                => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_config_clk,                --                                 .pll_config_clk
			mem_if_lpddr2_emif_pll_sharing_pll_mem_phy_clk               => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_mem_phy_clk,               --                                 .pll_mem_phy_clk
			mem_if_lpddr2_emif_pll_sharing_afi_phy_clk                   => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_afi_phy_clk,                   --                                 .afi_phy_clk
			mem_if_lpddr2_emif_pll_sharing_pll_avl_phy_clk               => CONNECTED_TO_mem_if_lpddr2_emif_pll_sharing_pll_avl_phy_clk,               --                                 .pll_avl_phy_clk
			mem_if_lpddr2_emif_avl_0_waitrequest_n                       => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_waitrequest_n,                       --         mem_if_lpddr2_emif_avl_0.waitrequest_n
			mem_if_lpddr2_emif_avl_0_beginbursttransfer                  => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_beginbursttransfer,                  --                                 .beginbursttransfer
			mem_if_lpddr2_emif_avl_0_address                             => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_address,                             --                                 .address
			mem_if_lpddr2_emif_avl_0_readdatavalid                       => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_readdatavalid,                       --                                 .readdatavalid
			mem_if_lpddr2_emif_avl_0_readdata                            => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_readdata,                            --                                 .readdata
			mem_if_lpddr2_emif_avl_0_writedata                           => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_writedata,                           --                                 .writedata
			mem_if_lpddr2_emif_avl_0_byteenable                          => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_byteenable,                          --                                 .byteenable
			mem_if_lpddr2_emif_avl_0_read                                => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_read,                                --                                 .read
			mem_if_lpddr2_emif_avl_0_write                               => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_write,                               --                                 .write
			mem_if_lpddr2_emif_avl_0_burstcount                          => CONNECTED_TO_mem_if_lpddr2_emif_avl_0_burstcount,                          --                                 .burstcount
			mm_clock_crossing_bridge_0_m0_waitrequest                    => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_waitrequest,                    --    mm_clock_crossing_bridge_0_m0.waitrequest
			mm_clock_crossing_bridge_0_m0_readdata                       => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_readdata,                       --                                 .readdata
			mm_clock_crossing_bridge_0_m0_readdatavalid                  => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_readdatavalid,                  --                                 .readdatavalid
			mm_clock_crossing_bridge_0_m0_burstcount                     => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_burstcount,                     --                                 .burstcount
			mm_clock_crossing_bridge_0_m0_writedata                      => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_writedata,                      --                                 .writedata
			mm_clock_crossing_bridge_0_m0_address                        => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_address,                        --                                 .address
			mm_clock_crossing_bridge_0_m0_write                          => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_write,                          --                                 .write
			mm_clock_crossing_bridge_0_m0_read                           => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_read,                           --                                 .read
			mm_clock_crossing_bridge_0_m0_byteenable                     => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_byteenable,                     --                                 .byteenable
			mm_clock_crossing_bridge_0_m0_debugaccess                    => CONNECTED_TO_mm_clock_crossing_bridge_0_m0_debugaccess,                    --                                 .debugaccess
			uart_usb_rxd                                                 => CONNECTED_TO_uart_usb_rxd,                                                 --                         uart_usb.rxd
			uart_usb_txd                                                 => CONNECTED_TO_uart_usb_txd,                                                 --                                 .txd
			led_green_export                                             => CONNECTED_TO_led_green_export,                                             --                        led_green.export
			led_red_export                                               => CONNECTED_TO_led_red_export,                                               --                          led_red.export
			sd_card_cs                                                   => CONNECTED_TO_sd_card_cs,                                                   --                          sd_card.cs
			sd_card_sclk                                                 => CONNECTED_TO_sd_card_sclk,                                                 --                                 .sclk
			sd_card_mosi                                                 => CONNECTED_TO_sd_card_mosi,                                                 --                                 .mosi
			sd_card_miso                                                 => CONNECTED_TO_sd_card_miso,                                                 --                                 .miso
			sd_card_cd                                                   => CONNECTED_TO_sd_card_cd,                                                   --                                 .cd
			sd_card_wp                                                   => CONNECTED_TO_sd_card_wp,                                                   --                                 .wp
			tristate_conduit_bridge_sram_out_sram_tcm_data_out           => CONNECTED_TO_tristate_conduit_bridge_sram_out_sram_tcm_data_out,           -- tristate_conduit_bridge_sram_out.sram_tcm_data_out
			tristate_conduit_bridge_sram_out_sram_tcm_address_out        => CONNECTED_TO_tristate_conduit_bridge_sram_out_sram_tcm_address_out,        --                                 .sram_tcm_address_out
			tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out => CONNECTED_TO_tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out, --                                 .sram_tcm_outputenable_n_out
			tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out   => CONNECTED_TO_tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out,   --                                 .sram_tcm_chipselect_n_out
			tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out   => CONNECTED_TO_tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out,   --                                 .sram_tcm_byteenable_n_out
			tristate_conduit_bridge_sram_out_sram_tcm_write_n_out        => CONNECTED_TO_tristate_conduit_bridge_sram_out_sram_tcm_write_n_out,        --                                 .sram_tcm_write_n_out
			switches_export                                              => CONNECTED_TO_switches_export                                               --                         switches.export
		);

