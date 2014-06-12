// fpga_ddr3_c0.v

// This file was auto-generated from alt_mem_if_nextgen_ddr3_controller_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 13.0 144 at 2013.04.07.17:33:49

`timescale 1 ps / 1 ps
module fpga_ddr3_c0 (
		input  wire         afi_reset_n,         //    afi_reset.reset_n
		input  wire         afi_clk,             //      afi_clk.clk
		input  wire         afi_half_clk,        // afi_half_clk.clk
		output wire         local_init_done,     //       status.local_init_done
		output wire         local_cal_success,   //             .local_cal_success
		output wire         local_cal_fail,      //             .local_cal_fail
		output wire [29:0]  afi_addr,            //          afi.afi_addr
		output wire [5:0]   afi_ba,              //             .afi_ba
		output wire [1:0]   afi_ras_n,           //             .afi_ras_n
		output wire [1:0]   afi_we_n,            //             .afi_we_n
		output wire [1:0]   afi_cas_n,           //             .afi_cas_n
		output wire [1:0]   afi_odt,             //             .afi_odt
		output wire [1:0]   afi_cke,             //             .afi_cke
		output wire [1:0]   afi_cs_n,            //             .afi_cs_n
		output wire [7:0]   afi_dqs_burst,       //             .afi_dqs_burst
		output wire [7:0]   afi_wdata_valid,     //             .afi_wdata_valid
		output wire [127:0] afi_wdata,           //             .afi_wdata
		output wire [15:0]  afi_dm,              //             .afi_dm
		input  wire [127:0] afi_rdata,           //             .afi_rdata
		output wire [1:0]   afi_rst_n,           //             .afi_rst_n
		output wire [0:0]   afi_mem_clk_disable, //             .afi_mem_clk_disable
		output wire         afi_init_req,        //             .afi_init_req
		output wire         afi_cal_req,         //             .afi_cal_req
		output wire [1:0]   afi_rdata_en,        //             .afi_rdata_en
		output wire [1:0]   afi_rdata_en_full,   //             .afi_rdata_en_full
		input  wire [1:0]   afi_rdata_valid,     //             .afi_rdata_valid
		input  wire         afi_cal_success,     //             .afi_cal_success
		input  wire         afi_cal_fail,        //             .afi_cal_fail
		input  wire [5:0]   afi_wlat,            //             .afi_wlat
		input  wire [5:0]   afi_rlat,            //             .afi_rlat
		output wire         avl_ready,           //          avl.waitrequest_n
		input  wire         avl_burstbegin,      //             .beginbursttransfer
		input  wire [25:0]  avl_addr,            //             .address
		output wire         avl_rdata_valid,     //             .readdatavalid
		output wire [127:0] avl_rdata,           //             .readdata
		input  wire [127:0] avl_wdata,           //             .writedata
		input  wire [15:0]  avl_be,              //             .byteenable
		input  wire         avl_read_req,        //             .read
		input  wire         avl_write_req,       //             .write
		input  wire [2:0]   avl_size             //             .burstcount
	);

	wire          a0_native_st_itf_wr_data_begin;     // a0:itf_wr_data_begin -> ng0:itf_wr_data_begin
	wire          a0_native_st_itf_rd_data_ready;     // a0:itf_rd_data_ready -> ng0:itf_rd_data_ready
	wire  [127:0] a0_native_st_itf_wr_data;           // a0:itf_wr_data -> ng0:itf_wr_data
	wire          ng0_native_st_itf_rd_data_error;    // ng0:itf_rd_data_error -> a0:itf_rd_data_error
	wire          ng0_native_st_itf_rd_data_begin;    // ng0:itf_rd_data_begin -> a0:itf_rd_data_begin
	wire    [7:0] a0_native_st_itf_wr_data_id;        // a0:itf_wr_data_id -> ng0:itf_wr_data_id
	wire          ng0_native_st_itf_cmd_ready;        // ng0:itf_cmd_ready -> a0:itf_cmd_ready
	wire          a0_native_st_itf_wr_data_last;      // a0:itf_wr_data_last -> ng0:itf_wr_data_last
	wire   [15:0] a0_native_st_itf_wr_data_byte_en;   // a0:itf_wr_data_byte_en -> ng0:itf_wr_data_byte_en
	wire   [25:0] a0_native_st_itf_cmd_address;       // a0:itf_cmd_address -> ng0:itf_cmd_address
	wire          a0_native_st_itf_cmd_valid;         // a0:itf_cmd_valid -> ng0:itf_cmd_valid
	wire          a0_native_st_itf_wr_data_valid;     // a0:itf_wr_data_valid -> ng0:itf_wr_data_valid
	wire          a0_native_st_itf_cmd_autopercharge; // a0:itf_cmd_autopercharge -> ng0:itf_cmd_autopercharge
	wire          ng0_native_st_itf_rd_data_last;     // ng0:itf_rd_data_last -> a0:itf_rd_data_last
	wire  [127:0] ng0_native_st_itf_rd_data;          // ng0:itf_rd_data -> a0:itf_rd_data
	wire    [2:0] a0_native_st_itf_cmd_burstlen;      // a0:itf_cmd_burstlen -> ng0:itf_cmd_burstlen
	wire          ng0_native_st_itf_rd_data_valid;    // ng0:itf_rd_data_valid -> a0:itf_rd_data_valid
	wire          a0_native_st_itf_cmd_multicast;     // a0:itf_cmd_multicast -> ng0:itf_cmd_multicast
	wire    [7:0] a0_native_st_itf_cmd_id;            // a0:itf_cmd_id -> ng0:itf_cmd_id
	wire          ng0_native_st_itf_wr_data_ready;    // ng0:itf_wr_data_ready -> a0:itf_wr_data_ready
	wire    [7:0] ng0_native_st_itf_rd_data_id;       // ng0:itf_rd_data_id -> a0:itf_rd_data_id
	wire          a0_native_st_itf_cmd;               // a0:itf_cmd -> ng0:itf_cmd
	wire          a0_native_st_itf_cmd_priority;      // a0:itf_cmd_priority -> ng0:itf_cmd_priority

	alt_mem_if_nextgen_ddr3_controller_core #(
		.MEM_IF_ADDR_WIDTH                (15),
		.MEM_IF_ROW_ADDR_WIDTH            (15),
		.MEM_IF_COL_ADDR_WIDTH            (10),
		.MEM_IF_DM_WIDTH                  (4),
		.MEM_IF_DQS_WIDTH                 (4),
		.MEM_IF_CS_WIDTH                  (1),
		.MEM_IF_CHIP_BITS                 (1),
		.MEM_IF_BANKADDR_WIDTH            (3),
		.MEM_IF_DQ_WIDTH                  (32),
		.MEM_IF_CLK_EN_WIDTH              (1),
		.MEM_IF_CLK_PAIR_COUNT            (1),
		.MEM_TRC                          (16),
		.MEM_TRAS                         (12),
		.MEM_TRCD                         (5),
		.MEM_TRP                          (5),
		.MEM_TREFI                        (2341),
		.MEM_TRFC                         (91),
		.MEM_TWR                          (5),
		.MEM_TFAW                         (16),
		.MEM_TRRD                         (4),
		.MEM_TRTP                         (4),
		.MEM_IF_ODT_WIDTH                 (1),
		.MEM_WTCL_INT                     (5),
		.MEM_IF_RD_TO_WR_TURNAROUND_OCT   (2),
		.MEM_IF_WR_TO_RD_TURNAROUND_OCT   (3),
		.CTL_RD_TO_PCH_EXTRA_CLK          (0),
		.CTL_RD_TO_RD_EXTRA_CLK           (0),
		.CTL_WR_TO_WR_EXTRA_CLK           (0),
		.CTL_RD_TO_RD_DIFF_CHIP_EXTRA_CLK (1),
		.CTL_WR_TO_WR_DIFF_CHIP_EXTRA_CLK (1),
		.MEM_TCL                          (6),
		.MEM_TMRD_CK                      (4),
		.MEM_TWTR                         (4),
		.CSR_ADDR_WIDTH                   (8),
		.CSR_DATA_WIDTH                   (32),
		.CSR_BE_WIDTH                     (4),
		.CTL_CS_WIDTH                     (1),
		.AVL_ADDR_WIDTH                   (26),
		.AVL_BE_WIDTH                     (16),
		.AVL_DATA_WIDTH                   (128),
		.AVL_SIZE_WIDTH                   (3),
		.DWIDTH_RATIO                     (4),
		.CTL_ODT_ENABLED                  (1),
		.CTL_OUTPUT_REGD                  (0),
		.CTL_ECC_MULTIPLES_16_24_40_72    (1),
		.CTL_REGDIMM_ENABLED              (0),
		.CTL_TBP_NUM                      (4),
		.CTL_USR_REFRESH                  (0),
		.CFG_TYPE                         (2),
		.CFG_INTERFACE_WIDTH              (32),
		.CFG_BURST_LENGTH                 (8),
		.CFG_ADDR_ORDER                   (0),
		.CFG_PDN_EXIT_CYCLES              (10),
		.CFG_POWER_SAVING_EXIT_CYCLES     (5),
		.CFG_MEM_CLK_ENTRY_CYCLES         (20),
		.CFG_SELF_RFSH_EXIT_CYCLES        (512),
		.CFG_PORT_WIDTH_WRITE_ODT_CHIP    (1),
		.CFG_PORT_WIDTH_READ_ODT_CHIP     (1),
		.CFG_WRITE_ODT_CHIP               (1),
		.CFG_READ_ODT_CHIP                (0),
		.LOCAL_CS_WIDTH                   (0),
		.CFG_CLR_INTR                     (0),
		.CFG_ENABLE_NO_DM                 (0),
		.MEM_ADD_LAT                      (0),
		.CTL_ENABLE_BURST_INTERRUPT_INT   (0),
		.CTL_ENABLE_BURST_TERMINATE_INT   (0),
		.CFG_ERRCMD_FIFO_REG              (0),
		.CFG_ECC_DECODER_REG              (0),
		.CTL_ENABLE_WDATA_PATH_LATENCY    (0),
		.CFG_STARVE_LIMIT                 (10),
		.MEM_AUTO_PD_CYCLES               (0),
		.CFG_REORDER_DATA                 (1),
		.CTL_CSR_ENABLED                  (0),
		.CTL_ECC_ENABLED                  (0),
		.CTL_ECC_AUTO_CORRECTION_ENABLED  (0),
		.ENABLE_BURST_MERGE               (0),
		.LOCAL_ID_WIDTH                   (8),
		.RDBUFFER_ADDR_WIDTH              (7),
		.WRBUFFER_ADDR_WIDTH              (6),
		.MAX_PENDING_WR_CMD               (8),
		.MAX_PENDING_RD_CMD               (16),
		.CFG_DATA_REORDERING_TYPE         ("INTER_BANK"),
		.USE_DQS_TRACKING                 (0),
		.USE_SHADOW_REGS                  (0),
		.AFI_RATE_RATIO                   (2),
		.AFI_ADDR_WIDTH                   (30),
		.AFI_BANKADDR_WIDTH               (6),
		.AFI_CONTROL_WIDTH                (2),
		.AFI_CS_WIDTH                     (2),
		.AFI_CLK_EN_WIDTH                 (2),
		.AFI_DM_WIDTH                     (16),
		.AFI_DQ_WIDTH                     (128),
		.AFI_ODT_WIDTH                    (2),
		.AFI_WRITE_DQS_WIDTH              (8),
		.AFI_RLAT_WIDTH                   (6),
		.AFI_WLAT_WIDTH                   (6),
		.AFI_RRANK_WIDTH                  (8),
		.AFI_WRANK_WIDTH                  (8)
	) ng0 (
		.afi_reset_n             (afi_reset_n),                          //    afi_reset.reset_n
		.afi_half_clk            (afi_half_clk),                         // afi_half_clk.clk
		.afi_clk                 (afi_clk),                              //      afi_clk.clk
		.local_init_done         (local_init_done),                      //       status.local_init_done
		.local_cal_success       (local_cal_success),                    //             .local_cal_success
		.local_cal_fail          (local_cal_fail),                       //             .local_cal_fail
		.itf_cmd_ready           (ng0_native_st_itf_cmd_ready),          //    native_st.itf_cmd_ready
		.itf_cmd_valid           (a0_native_st_itf_cmd_valid),           //             .itf_cmd_valid
		.itf_cmd                 (a0_native_st_itf_cmd),                 //             .itf_cmd
		.itf_cmd_address         (a0_native_st_itf_cmd_address),         //             .itf_cmd_address
		.itf_cmd_burstlen        (a0_native_st_itf_cmd_burstlen),        //             .itf_cmd_burstlen
		.itf_cmd_id              (a0_native_st_itf_cmd_id),              //             .itf_cmd_id
		.itf_cmd_priority        (a0_native_st_itf_cmd_priority),        //             .itf_cmd_priority
		.itf_cmd_autopercharge   (a0_native_st_itf_cmd_autopercharge),   //             .itf_cmd_autopercharge
		.itf_cmd_multicast       (a0_native_st_itf_cmd_multicast),       //             .itf_cmd_multicast
		.itf_wr_data_ready       (ng0_native_st_itf_wr_data_ready),      //             .itf_wr_data_ready
		.itf_wr_data_valid       (a0_native_st_itf_wr_data_valid),       //             .itf_wr_data_valid
		.itf_wr_data             (a0_native_st_itf_wr_data),             //             .itf_wr_data
		.itf_wr_data_byte_en     (a0_native_st_itf_wr_data_byte_en),     //             .itf_wr_data_byte_en
		.itf_wr_data_begin       (a0_native_st_itf_wr_data_begin),       //             .itf_wr_data_begin
		.itf_wr_data_last        (a0_native_st_itf_wr_data_last),        //             .itf_wr_data_last
		.itf_wr_data_id          (a0_native_st_itf_wr_data_id),          //             .itf_wr_data_id
		.itf_rd_data_ready       (a0_native_st_itf_rd_data_ready),       //             .itf_rd_data_ready
		.itf_rd_data_valid       (ng0_native_st_itf_rd_data_valid),      //             .itf_rd_data_valid
		.itf_rd_data             (ng0_native_st_itf_rd_data),            //             .itf_rd_data
		.itf_rd_data_error       (ng0_native_st_itf_rd_data_error),      //             .itf_rd_data_error
		.itf_rd_data_begin       (ng0_native_st_itf_rd_data_begin),      //             .itf_rd_data_begin
		.itf_rd_data_last        (ng0_native_st_itf_rd_data_last),       //             .itf_rd_data_last
		.itf_rd_data_id          (ng0_native_st_itf_rd_data_id),         //             .itf_rd_data_id
		.afi_addr                (afi_addr),                             //          afi.afi_addr
		.afi_ba                  (afi_ba),                               //             .afi_ba
		.afi_ras_n               (afi_ras_n),                            //             .afi_ras_n
		.afi_we_n                (afi_we_n),                             //             .afi_we_n
		.afi_cas_n               (afi_cas_n),                            //             .afi_cas_n
		.afi_odt                 (afi_odt),                              //             .afi_odt
		.afi_cke                 (afi_cke),                              //             .afi_cke
		.afi_cs_n                (afi_cs_n),                             //             .afi_cs_n
		.afi_dqs_burst           (afi_dqs_burst),                        //             .afi_dqs_burst
		.afi_wdata_valid         (afi_wdata_valid),                      //             .afi_wdata_valid
		.afi_wdata               (afi_wdata),                            //             .afi_wdata
		.afi_dm                  (afi_dm),                               //             .afi_dm
		.afi_rdata               (afi_rdata),                            //             .afi_rdata
		.afi_rst_n               (afi_rst_n),                            //             .afi_rst_n
		.afi_mem_clk_disable     (afi_mem_clk_disable),                  //             .afi_mem_clk_disable
		.afi_init_req            (afi_init_req),                         //             .afi_init_req
		.afi_cal_req             (afi_cal_req),                          //             .afi_cal_req
		.afi_rdata_en            (afi_rdata_en),                         //             .afi_rdata_en
		.afi_rdata_en_full       (afi_rdata_en_full),                    //             .afi_rdata_en_full
		.afi_rdata_valid         (afi_rdata_valid),                      //             .afi_rdata_valid
		.afi_cal_success         (afi_cal_success),                      //             .afi_cal_success
		.afi_cal_fail            (afi_cal_fail),                         //             .afi_cal_fail
		.afi_wlat                (afi_wlat),                             //             .afi_wlat
		.afi_rlat                (afi_rlat),                             //             .afi_rlat
		.csr_write_req           (1'b0),                                 //  (terminated)
		.csr_read_req            (1'b0),                                 //  (terminated)
		.csr_waitrequest         (),                                     //  (terminated)
		.csr_addr                (8'b00000000),                          //  (terminated)
		.csr_be                  (4'b0000),                              //  (terminated)
		.csr_wdata               (32'b00000000000000000000000000000000), //  (terminated)
		.csr_rdata               (),                                     //  (terminated)
		.csr_rdata_valid         (),                                     //  (terminated)
		.afi_seq_busy            (1'b0),                                 //  (terminated)
		.afi_ctl_refresh_done    (),                                     //  (terminated)
		.afi_ctl_long_idle       (),                                     //  (terminated)
		.afi_rrank               (),                                     //  (terminated)
		.afi_wrank               (),                                     //  (terminated)
		.local_multicast         (1'b0),                                 //  (terminated)
		.local_refresh_req       (1'b0),                                 //  (terminated)
		.local_refresh_chip      (1'b0),                                 //  (terminated)
		.local_refresh_ack       (),                                     //  (terminated)
		.local_self_rfsh_req     (1'b0),                                 //  (terminated)
		.local_self_rfsh_chip    (1'b0),                                 //  (terminated)
		.local_self_rfsh_ack     (),                                     //  (terminated)
		.local_deep_powerdn_req  (1'b0),                                 //  (terminated)
		.local_deep_powerdn_chip (1'b0),                                 //  (terminated)
		.local_deep_powerdn_ack  (),                                     //  (terminated)
		.local_powerdn_ack       (),                                     //  (terminated)
		.local_priority          (1'b0),                                 //  (terminated)
		.local_zqcal_req         (1'b0),                                 //  (terminated)
		.local_zqcal_chip        (1'b0)                                  //  (terminated)
	);

	alt_mem_ddrx_mm_st_converter #(
		.AVL_SIZE_WIDTH   (3),
		.AVL_ADDR_WIDTH   (26),
		.AVL_DATA_WIDTH   (128),
		.LOCAL_ID_WIDTH   (8),
		.CFG_DWIDTH_RATIO (4)
	) a0 (
		.ctl_clk               (afi_clk),                            //        afi_clk.clk
		.ctl_reset_n           (afi_reset_n),                        //      afi_reset.reset_n
		.ctl_half_clk          (afi_half_clk),                       //   afi_half_clk.clk
		.ctl_half_clk_reset_n  (afi_reset_n),                        // afi_half_reset.reset_n
		.avl_ready             (avl_ready),                          //            avl.waitrequest_n
		.avl_burstbegin        (avl_burstbegin),                     //               .beginbursttransfer
		.avl_addr              (avl_addr),                           //               .address
		.avl_rdata_valid       (avl_rdata_valid),                    //               .readdatavalid
		.avl_rdata             (avl_rdata),                          //               .readdata
		.avl_wdata             (avl_wdata),                          //               .writedata
		.avl_be                (avl_be),                             //               .byteenable
		.avl_read_req          (avl_read_req),                       //               .read
		.avl_write_req         (avl_write_req),                      //               .write
		.avl_size              (avl_size),                           //               .burstcount
		.itf_cmd_ready         (ng0_native_st_itf_cmd_ready),        //      native_st.itf_cmd_ready
		.itf_cmd_valid         (a0_native_st_itf_cmd_valid),         //               .itf_cmd_valid
		.itf_cmd               (a0_native_st_itf_cmd),               //               .itf_cmd
		.itf_cmd_address       (a0_native_st_itf_cmd_address),       //               .itf_cmd_address
		.itf_cmd_burstlen      (a0_native_st_itf_cmd_burstlen),      //               .itf_cmd_burstlen
		.itf_cmd_id            (a0_native_st_itf_cmd_id),            //               .itf_cmd_id
		.itf_cmd_priority      (a0_native_st_itf_cmd_priority),      //               .itf_cmd_priority
		.itf_cmd_autopercharge (a0_native_st_itf_cmd_autopercharge), //               .itf_cmd_autopercharge
		.itf_cmd_multicast     (a0_native_st_itf_cmd_multicast),     //               .itf_cmd_multicast
		.itf_wr_data_ready     (ng0_native_st_itf_wr_data_ready),    //               .itf_wr_data_ready
		.itf_wr_data_valid     (a0_native_st_itf_wr_data_valid),     //               .itf_wr_data_valid
		.itf_wr_data           (a0_native_st_itf_wr_data),           //               .itf_wr_data
		.itf_wr_data_byte_en   (a0_native_st_itf_wr_data_byte_en),   //               .itf_wr_data_byte_en
		.itf_wr_data_begin     (a0_native_st_itf_wr_data_begin),     //               .itf_wr_data_begin
		.itf_wr_data_last      (a0_native_st_itf_wr_data_last),      //               .itf_wr_data_last
		.itf_wr_data_id        (a0_native_st_itf_wr_data_id),        //               .itf_wr_data_id
		.itf_rd_data_ready     (a0_native_st_itf_rd_data_ready),     //               .itf_rd_data_ready
		.itf_rd_data_valid     (ng0_native_st_itf_rd_data_valid),    //               .itf_rd_data_valid
		.itf_rd_data           (ng0_native_st_itf_rd_data),          //               .itf_rd_data
		.itf_rd_data_error     (ng0_native_st_itf_rd_data_error),    //               .itf_rd_data_error
		.itf_rd_data_begin     (ng0_native_st_itf_rd_data_begin),    //               .itf_rd_data_begin
		.itf_rd_data_last      (ng0_native_st_itf_rd_data_last),     //               .itf_rd_data_last
		.itf_rd_data_id        (ng0_native_st_itf_rd_data_id),       //               .itf_rd_data_id
		.local_multicast       (1'b0),                               //    (terminated)
		.local_autopch_req     (1'b0),                               //    (terminated)
		.local_priority        (1'b0)                                //    (terminated)
	);

endmodule
