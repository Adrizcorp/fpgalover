// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Wed Jul 10 14:27:00 2013
// ============================================================================

`define ENABLE_DDR2LP
//`define ENABLE_HSMC_XCVR
//`define ENABLE_SMA
//`define ENABLE_REFCLK
//`define ENABLE_GPIO

module C5G_LPDDR2_Nios_Test(

      ///////// ADC /////////
      output             ADC_CONVST,
      output             ADC_SCK,
      output             ADC_SDI,
      input              ADC_SDO,

      ///////// AUD /////////
      input              AUD_ADCDAT,
      inout              AUD_ADCLRCK,
      inout              AUD_BCLK,
      output             AUD_DACDAT,
      inout              AUD_DACLRCK, 
      output             AUD_XCK,

      ///////// CLOCK /////////
      input              CLOCK_125_p,
      input              CLOCK_50_B3B,
      input              CLOCK_50_B5B,
      input              CLOCK_50_B6A,
      input              CLOCK_50_B7A,
      input              CLOCK_50_B8A,

      ///////// CPU /////////
      input              CPU_RESET_n,

`ifdef ENABLE_DDR2LP
      ///////// DDR2LP /////////
      output      [9:0]  DDR2LP_CA,
      output      [1:0]  DDR2LP_CKE,
      output             DDR2LP_CK_n,
      output             DDR2LP_CK_p,
      output      [1:0]  DDR2LP_CS_n,
      output      [3:0]  DDR2LP_DM,
      inout       [31:0] DDR2LP_DQ,
      inout       [3:0]  DDR2LP_DQS_n,
      inout       [3:0]  DDR2LP_DQS_p,
      input              DDR2LP_OCT_RZQ,
`endif /*ENABLE_DDR2LP*/

`ifdef ENABLE_GPIO
      ///////// GPIO /////////
      inout       [35:0] GPIO,
`else	
      ///////// HEX2 /////////
      output      [6:0]  HEX2,

      ///////// HEX3 /////////
      output      [6:0]  HEX3,		
		
		
`endif /*ENABLE_GPIO*/

      ///////// HDMI /////////
      output             HDMI_TX_CLK,
      output      [23:0] HDMI_TX_D,
      output             HDMI_TX_DE,
      output             HDMI_TX_HS,
      input              HDMI_TX_INT,
      output             HDMI_TX_VS,

      ///////// HEX0 /////////
      output      [6:0]  HEX0,

      ///////// HEX1 /////////
      output      [6:0]  HEX1,


      ///////// HSMC /////////
      input              HSMC_CLKIN0,
      input       [2:1]  HSMC_CLKIN_n,
      input       [2:1]  HSMC_CLKIN_p,
      output             HSMC_CLKOUT0,
      output      [2:1]  HSMC_CLKOUT_n,
      output      [2:1]  HSMC_CLKOUT_p,
      inout       [3:0]  HSMC_D,
`ifdef ENABLE_HSMC_XCVR		
      input       [3:0]  HSMC_GXB_RX_p,
      output      [3:0]  HSMC_GXB_TX_p,
`endif /*ENABLE_HSMC_XCVR*/		
      inout       [16:0] HSMC_RX_n,
      inout       [16:0] HSMC_RX_p,
      inout       [16:0] HSMC_TX_n,
      inout       [16:0] HSMC_TX_p,


      ///////// I2C /////////
      output             I2C_SCL,
      inout              I2C_SDA,

      ///////// KEY /////////
      input       [3:0]  KEY,

      ///////// LEDG /////////
      output      [7:0]  LEDG,

      ///////// LEDR /////////
      output      [9:0]  LEDR,

`ifdef ENABLE_REFCLK
      ///////// REFCLK /////////
      input              REFCLK_p0,
      input              REFCLK_p1,
`endif /*ENABLE_REFCLK*/

      ///////// SD /////////
      output             SD_CLK,
      inout              SD_CMD,
      inout       [3:0]  SD_DAT,

`ifdef ENABLE_SMA
      ///////// SMA /////////
      input              SMA_GXB_RX_p,
      output             SMA_GXB_TX_p,
`endif /*ENABLE_SMA*/

      ///////// SRAM /////////
      output      [17:0] SRAM_A,
      output             SRAM_CE_n,
      inout       [15:0] SRAM_D,
      output             SRAM_LB_n,
      output             SRAM_OE_n,
      output             SRAM_UB_n,
      output             SRAM_WE_n,

      ///////// SW /////////
      input       [9:0]  SW,

      ///////// UART /////////
      input              UART_RX,
      output             UART_TX


);

wire lpddr2_local_init_done;
wire lpddr2_local_cal_success;
wire lpddr2_local_cal_fail;

	
wire         lpddr2_avl_ready;            // avl.waitrequest_n
wire         lpddr2_avl_burstbegin;  // .beginbursttransfer
wire [28:0]  lpddr2_avl_addr;        // .address
wire         lpddr2_avl_rdata_valid; // .readdatavalid
wire [31:0]  lpddr2_avl_rdata;        // .readdata
wire [31:0]  lpddr2_avl_wdata;        // .writedata
wire         lpddr2_avl_read_req;    // .read
wire         lpddr2_avl_write_req;   // .write
wire [2:0]   lpddr2_avl_size;             // .burstcount
wire [3:0]   lpddr2_avl_be;

assign lpddr2_avl_burstbegin = lpddr2_avl_write_req || lpddr2_avl_read_req;


wire sram_addr_dummy;

C5G_QSYS u0
  (.clk_clk(CLOCK_125_p), // input
   .reset_reset_n(1'b1),  // input
   .memory_mem_ca(DDR2LP_CA),
   .memory_mem_ck(DDR2LP_CK_p),
   .memory_mem_ck_n(DDR2LP_CK_n),
   .memory_mem_cke(DDR2LP_CKE),
   .memory_mem_cs_n(DDR2LP_CS_n),
   .memory_mem_dm(DDR2LP_DM),
   .memory_mem_dq(DDR2LP_DQ),
   .memory_mem_dqs(DDR2LP_DQS_p),
   .memory_mem_dqs_n(DDR2LP_DQS_n),
   .oct_rzqin(DDR2LP_OCT_RZQ),
   .mem_if_lpddr2_emif_status_local_init_done(lpddr2_local_init_done), // output
   .mem_if_lpddr2_emif_status_local_cal_success(lpddr2_local_cal_success), // output
   .mem_if_lpddr2_emif_status_local_cal_fail(lpddr2_local_cal_fail), // output
   //.lpddr2_status_external_connection_export({lpddr2_local_cal_success, lpddr2_local_cal_fail, lpddr2_local_init_done}), // input
   

   .mem_if_lpddr2_emif_avl_0_waitrequest_n(lpddr2_avl_ready), // output wire
   .mem_if_lpddr2_emif_avl_0_beginbursttransfer(lpddr2_avl_burstbegin), // input  wire
   .mem_if_lpddr2_emif_avl_0_address(lpddr2_avl_addr[28:2]), // input  wire [26:0]
   .mem_if_lpddr2_emif_avl_0_readdatavalid(lpddr2_avl_rdata_valid), // output wire
   .mem_if_lpddr2_emif_avl_0_readdata(lpddr2_avl_rdata), // output wire [31:0]
   .mem_if_lpddr2_emif_avl_0_writedata(lpddr2_avl_wdata), // input  wire [31:0]
   .mem_if_lpddr2_emif_avl_0_byteenable(lpddr2_avl_be), // input  wire [3:0]
   .mem_if_lpddr2_emif_avl_0_read(lpddr2_avl_read_req), // input  wire
   .mem_if_lpddr2_emif_avl_0_write(lpddr2_avl_write_req), // input  wire
   .mem_if_lpddr2_emif_avl_0_burstcount(lpddr2_avl_size), // input  wire [2:0]
   .mm_clock_crossing_bridge_0_m0_waitrequest(~lpddr2_avl_ready), // input  wire
   .mm_clock_crossing_bridge_0_m0_readdata(lpddr2_avl_rdata), // input  wire [31:0]
   .mm_clock_crossing_bridge_0_m0_readdatavalid(lpddr2_avl_rdata_valid), // input  wire
   .mm_clock_crossing_bridge_0_m0_burstcount(lpddr2_avl_size), // output wire [3:0]
   .mm_clock_crossing_bridge_0_m0_writedata(lpddr2_avl_wdata), // output wire [31:0]
   .mm_clock_crossing_bridge_0_m0_address(lpddr2_avl_addr), // output wire [28:0]
   .mm_clock_crossing_bridge_0_m0_write(lpddr2_avl_write_req), // output wire
   .mm_clock_crossing_bridge_0_m0_read(lpddr2_avl_read_req), // output wire
   .mm_clock_crossing_bridge_0_m0_byteenable(lpddr2_avl_be), // output wire [3:0]
   .mm_clock_crossing_bridge_0_m0_debugaccess(), // output wire
	
	//KEY 
	.key_external_connection_export(KEY[3:0]), // input
	.switches_export                                              (SW[9:0]),        
  //USB_UART
   .uart_usb_rxd                                             (UART_RX),                                             //                          uart_usb.rxd
   .uart_usb_txd                                             (UART_TX) ,
  	//LED ports
  .led_green_export                                         (LEDG[7:0]),                                         //                         led_green.export
  .led_red_export                                           (LEDR[9:0]),                                                      //                           led_red.export
  //SD CARD
  .sd_card_cs                                               (SD_DAT[3]),                                               //                           sd_card.cs
  .sd_card_sclk                                             (SD_CLK),                                             //                                  .sclk
  .sd_card_mosi                                             (SD_CMD),                                             //                                  .mosi
  .sd_card_miso                                             (SD_DAT[0]),                                                 //                                  .wp
  //SRAM
  .tristate_conduit_bridge_sram_out_sram_tcm_address_out        ({SRAM_A,sram_addr_dummy}),        // tristate_conduit_bridge_sram_out.tcm_address_out
  .tristate_conduit_bridge_sram_out_sram_tcm_outputenable_n_out (SRAM_OE_n), //                                 .tcm_outputenable_n_out
  .tristate_conduit_bridge_sram_out_sram_tcm_byteenable_n_out   ({SRAM_UB_n,SRAM_LB_n}),   //                                 .tcm_byteenable_n_out
  .tristate_conduit_bridge_sram_out_sram_tcm_write_n_out        (SRAM_WE_n),        //                                 .tcm_write_n_out
  .tristate_conduit_bridge_sram_out_sram_tcm_data_out           (SRAM_D),           //                                 .tcm_data_out
  .tristate_conduit_bridge_sram_out_sram_tcm_chipselect_n_out   (SRAM_CE_n)    //                                 .tcm_chipselect_n_out
  
   );







endmodule
