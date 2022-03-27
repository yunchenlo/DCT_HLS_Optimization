// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_Col_DCT_Loop_pr (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        col_inbuf_0_address0,
        col_inbuf_0_ce0,
        col_inbuf_0_q0,
        col_inbuf_1_address0,
        col_inbuf_1_ce0,
        col_inbuf_1_q0,
        col_inbuf_2_address0,
        col_inbuf_2_ce0,
        col_inbuf_2_q0,
        col_inbuf_3_address0,
        col_inbuf_3_ce0,
        col_inbuf_3_q0,
        col_inbuf_4_address0,
        col_inbuf_4_ce0,
        col_inbuf_4_q0,
        col_inbuf_5_address0,
        col_inbuf_5_ce0,
        col_inbuf_5_q0,
        col_inbuf_6_address0,
        col_inbuf_6_ce0,
        col_inbuf_6_q0,
        col_inbuf_7_address0,
        col_inbuf_7_ce0,
        col_inbuf_7_q0,
        col_outbuf_i_address0,
        col_outbuf_i_ce0,
        col_outbuf_i_we0,
        col_outbuf_i_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] col_inbuf_0_address0;
output   col_inbuf_0_ce0;
input  [15:0] col_inbuf_0_q0;
output  [2:0] col_inbuf_1_address0;
output   col_inbuf_1_ce0;
input  [15:0] col_inbuf_1_q0;
output  [2:0] col_inbuf_2_address0;
output   col_inbuf_2_ce0;
input  [15:0] col_inbuf_2_q0;
output  [2:0] col_inbuf_3_address0;
output   col_inbuf_3_ce0;
input  [15:0] col_inbuf_3_q0;
output  [2:0] col_inbuf_4_address0;
output   col_inbuf_4_ce0;
input  [15:0] col_inbuf_4_q0;
output  [2:0] col_inbuf_5_address0;
output   col_inbuf_5_ce0;
input  [15:0] col_inbuf_5_q0;
output  [2:0] col_inbuf_6_address0;
output   col_inbuf_6_ce0;
input  [15:0] col_inbuf_6_q0;
output  [2:0] col_inbuf_7_address0;
output   col_inbuf_7_ce0;
input  [15:0] col_inbuf_7_q0;
output  [5:0] col_outbuf_i_address0;
output   col_outbuf_i_ce0;
output   col_outbuf_i_we0;
output  [15:0] col_outbuf_i_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg col_inbuf_0_ce0;
reg col_inbuf_1_ce0;
reg col_inbuf_2_ce0;
reg col_inbuf_3_ce0;
reg col_inbuf_4_ce0;
reg col_inbuf_5_ce0;
reg col_inbuf_6_ce0;
reg col_inbuf_7_ce0;
reg col_outbuf_i_ce0;
reg col_outbuf_i_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] dct_coeff_table_0_address0;
reg    dct_coeff_table_0_ce0;
wire   [13:0] dct_coeff_table_0_q0;
wire   [2:0] dct_coeff_table_1_address0;
reg    dct_coeff_table_1_ce0;
wire  signed [14:0] dct_coeff_table_1_q0;
wire   [2:0] dct_coeff_table_2_address0;
reg    dct_coeff_table_2_ce0;
wire  signed [14:0] dct_coeff_table_2_q0;
wire   [2:0] dct_coeff_table_3_address0;
reg    dct_coeff_table_3_ce0;
wire  signed [14:0] dct_coeff_table_3_q0;
wire   [2:0] dct_coeff_table_4_address0;
reg    dct_coeff_table_4_ce0;
wire  signed [14:0] dct_coeff_table_4_q0;
wire   [2:0] dct_coeff_table_5_address0;
reg    dct_coeff_table_5_ce0;
wire  signed [14:0] dct_coeff_table_5_q0;
wire   [2:0] dct_coeff_table_6_address0;
reg    dct_coeff_table_6_ce0;
wire  signed [14:0] dct_coeff_table_6_q0;
wire   [2:0] dct_coeff_table_7_address0;
reg    dct_coeff_table_7_ce0;
wire  signed [14:0] dct_coeff_table_7_q0;
reg   [3:0] k_i_reg_285;
wire   [0:0] tmp_2_fu_296_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] i_fu_302_p2;
reg   [3:0] i_reg_520;
wire   [7:0] tmp_19_cast_fu_328_p1;
reg   [7:0] tmp_19_cast_reg_525;
reg   [2:0] col_inbuf_0_addr_reg_530;
reg   [2:0] col_inbuf_1_addr_reg_535;
reg   [2:0] col_inbuf_2_addr_reg_540;
reg   [2:0] col_inbuf_3_addr_reg_545;
reg   [2:0] col_inbuf_4_addr_reg_550;
reg   [2:0] col_inbuf_5_addr_reg_555;
reg   [2:0] col_inbuf_6_addr_reg_560;
reg   [2:0] col_inbuf_7_addr_reg_565;
wire   [0:0] tmp_i_fu_332_p2;
reg   [0:0] tmp_i_reg_570;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter1_tmp_i_reg_570;
wire   [3:0] k_fu_338_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] tmp_6_fu_360_p2;
reg   [7:0] tmp_6_reg_579;
reg   [7:0] ap_reg_pp0_iter1_tmp_6_reg_579;
wire  signed [28:0] grp_fu_458_p3;
reg  signed [28:0] tmp1_reg_624;
reg    ap_enable_reg_pp0_iter1;
wire  signed [28:0] grp_fu_472_p3;
reg  signed [28:0] tmp2_reg_629;
wire  signed [28:0] grp_fu_486_p3;
reg  signed [28:0] tmp4_reg_634;
wire  signed [28:0] grp_fu_500_p3;
reg  signed [28:0] tmp5_reg_639;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
reg   [3:0] i_2_i_reg_274;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
wire   [63:0] dst_offset_cast_i_fu_308_p1;
wire   [63:0] tmp_i_20_fu_344_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_20_cast_fu_429_p1;
wire   [6:0] tmp_s_fu_320_p3;
wire   [7:0] tmp_i_cast_fu_356_p1;
(* use_dsp48 = "no" *) wire   [28:0] tmp_fu_433_p2;
(* use_dsp48 = "no" *) wire   [28:0] tmp3_fu_437_p2;
wire   [28:0] tmp_3_i_fu_441_p2;
wire   [13:0] grp_fu_458_p0;
wire  signed [28:0] tmp_8_1_i_fu_465_p2;
wire  signed [28:0] tmp_8_3_i_fu_479_p2;
wire  signed [28:0] tmp_8_5_i_fu_493_p2;
wire  signed [28:0] grp_fu_507_p3;
wire   [13:0] grp_fu_507_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [28:0] grp_fu_458_p00;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

Loop_Row_DCT_Loopbkb #(
    .DataWidth( 14 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_0_address0),
    .ce0(dct_coeff_table_0_ce0),
    .q0(dct_coeff_table_0_q0)
);

Loop_Row_DCT_Loopcud #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_1_address0),
    .ce0(dct_coeff_table_1_ce0),
    .q0(dct_coeff_table_1_q0)
);

Loop_Row_DCT_LoopdEe #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_2_address0),
    .ce0(dct_coeff_table_2_ce0),
    .q0(dct_coeff_table_2_q0)
);

Loop_Row_DCT_LoopeOg #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_3_address0),
    .ce0(dct_coeff_table_3_ce0),
    .q0(dct_coeff_table_3_q0)
);

Loop_Row_DCT_LoopfYi #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_4_address0),
    .ce0(dct_coeff_table_4_ce0),
    .q0(dct_coeff_table_4_q0)
);

Loop_Row_DCT_Loopg8j #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_5_address0),
    .ce0(dct_coeff_table_5_ce0),
    .q0(dct_coeff_table_5_q0)
);

Loop_Row_DCT_Loophbi #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_6_address0),
    .ce0(dct_coeff_table_6_ce0),
    .q0(dct_coeff_table_6_q0)
);

Loop_Row_DCT_Loopibs #(
    .DataWidth( 15 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_7_address0),
    .ce0(dct_coeff_table_7_ce0),
    .q0(dct_coeff_table_7_q0)
);

dct_mac_muladd_14jbC #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 14 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_14jbC_U48(
    .din0(grp_fu_458_p0),
    .din1(col_inbuf_0_q0),
    .din2(tmp_8_1_i_fu_465_p2),
    .dout(grp_fu_458_p3)
);

dct_mul_mul_15s_1kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_15s_1kbM_U49(
    .din0(dct_coeff_table_1_q0),
    .din1(col_inbuf_1_q0),
    .dout(tmp_8_1_i_fu_465_p2)
);

dct_mac_muladd_15lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_15lbW_U50(
    .din0(dct_coeff_table_2_q0),
    .din1(col_inbuf_2_q0),
    .din2(tmp_8_3_i_fu_479_p2),
    .dout(grp_fu_472_p3)
);

dct_mul_mul_15s_1kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_15s_1kbM_U51(
    .din0(dct_coeff_table_3_q0),
    .din1(col_inbuf_3_q0),
    .dout(tmp_8_3_i_fu_479_p2)
);

dct_mac_muladd_15lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_15lbW_U52(
    .din0(dct_coeff_table_4_q0),
    .din1(col_inbuf_4_q0),
    .din2(tmp_8_5_i_fu_493_p2),
    .dout(grp_fu_486_p3)
);

dct_mul_mul_15s_1kbM #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_15s_1kbM_U53(
    .din0(dct_coeff_table_5_q0),
    .din1(col_inbuf_5_q0),
    .dout(tmp_8_5_i_fu_493_p2)
);

dct_mac_muladd_15lbW #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_15lbW_U54(
    .din0(dct_coeff_table_6_q0),
    .din1(col_inbuf_6_q0),
    .din2(grp_fu_507_p3),
    .dout(grp_fu_500_p3)
);

dct_mac_muladd_15mb6 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_15mb6_U55(
    .din0(dct_coeff_table_7_q0),
    .din1(col_inbuf_7_q0),
    .din2(grp_fu_507_p2),
    .dout(grp_fu_507_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_2_i_reg_274 <= i_reg_520;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_2_i_reg_274 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_fu_332_p2 == 1'd0))) begin
        k_i_reg_285 <= k_fu_338_p2;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd0))) begin
        k_i_reg_285 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_tmp_6_reg_579 <= tmp_6_reg_579;
        ap_reg_pp0_iter1_tmp_i_reg_570 <= tmp_i_reg_570;
        tmp_i_reg_570 <= tmp_i_fu_332_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd0))) begin
        col_inbuf_0_addr_reg_530 <= dst_offset_cast_i_fu_308_p1;
        col_inbuf_1_addr_reg_535 <= dst_offset_cast_i_fu_308_p1;
        col_inbuf_2_addr_reg_540 <= dst_offset_cast_i_fu_308_p1;
        col_inbuf_3_addr_reg_545 <= dst_offset_cast_i_fu_308_p1;
        col_inbuf_4_addr_reg_550 <= dst_offset_cast_i_fu_308_p1;
        col_inbuf_5_addr_reg_555 <= dst_offset_cast_i_fu_308_p1;
        col_inbuf_6_addr_reg_560 <= dst_offset_cast_i_fu_308_p1;
        col_inbuf_7_addr_reg_565 <= dst_offset_cast_i_fu_308_p1;
        tmp_19_cast_reg_525[6 : 3] <= tmp_19_cast_fu_328_p1[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_520 <= i_fu_302_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_reg_570 == 1'd0))) begin
        tmp1_reg_624 <= grp_fu_458_p3;
        tmp2_reg_629 <= grp_fu_472_p3;
        tmp4_reg_634 <= grp_fu_486_p3;
        tmp5_reg_639 <= grp_fu_500_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_fu_332_p2 == 1'd0))) begin
        tmp_6_reg_579 <= tmp_6_fu_360_p2;
    end
end

always @ (*) begin
    if ((tmp_i_fu_332_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_0_ce0 = 1'b1;
    end else begin
        col_inbuf_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_1_ce0 = 1'b1;
    end else begin
        col_inbuf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_2_ce0 = 1'b1;
    end else begin
        col_inbuf_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_3_ce0 = 1'b1;
    end else begin
        col_inbuf_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_4_ce0 = 1'b1;
    end else begin
        col_inbuf_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_5_ce0 = 1'b1;
    end else begin
        col_inbuf_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_6_ce0 = 1'b1;
    end else begin
        col_inbuf_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_7_ce0 = 1'b1;
    end else begin
        col_inbuf_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_outbuf_i_ce0 = 1'b1;
    end else begin
        col_outbuf_i_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_tmp_i_reg_570 == 1'd0))) begin
        col_outbuf_i_we0 = 1'b1;
    end else begin
        col_outbuf_i_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_0_ce0 = 1'b1;
    end else begin
        dct_coeff_table_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_1_ce0 = 1'b1;
    end else begin
        dct_coeff_table_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_2_ce0 = 1'b1;
    end else begin
        dct_coeff_table_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_3_ce0 = 1'b1;
    end else begin
        dct_coeff_table_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_4_ce0 = 1'b1;
    end else begin
        dct_coeff_table_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_5_ce0 = 1'b1;
    end else begin
        dct_coeff_table_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_6_ce0 = 1'b1;
    end else begin
        dct_coeff_table_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dct_coeff_table_7_ce0 = 1'b1;
    end else begin
        dct_coeff_table_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_296_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_i_fu_332_p2 == 1'd1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_i_fu_332_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign col_inbuf_0_address0 = col_inbuf_0_addr_reg_530;

assign col_inbuf_1_address0 = col_inbuf_1_addr_reg_535;

assign col_inbuf_2_address0 = col_inbuf_2_addr_reg_540;

assign col_inbuf_3_address0 = col_inbuf_3_addr_reg_545;

assign col_inbuf_4_address0 = col_inbuf_4_addr_reg_550;

assign col_inbuf_5_address0 = col_inbuf_5_addr_reg_555;

assign col_inbuf_6_address0 = col_inbuf_6_addr_reg_560;

assign col_inbuf_7_address0 = col_inbuf_7_addr_reg_565;

assign col_outbuf_i_address0 = tmp_20_cast_fu_429_p1;

assign col_outbuf_i_d0 = {{tmp_3_i_fu_441_p2[28:13]}};

assign dct_coeff_table_0_address0 = tmp_i_20_fu_344_p1;

assign dct_coeff_table_1_address0 = tmp_i_20_fu_344_p1;

assign dct_coeff_table_2_address0 = tmp_i_20_fu_344_p1;

assign dct_coeff_table_3_address0 = tmp_i_20_fu_344_p1;

assign dct_coeff_table_4_address0 = tmp_i_20_fu_344_p1;

assign dct_coeff_table_5_address0 = tmp_i_20_fu_344_p1;

assign dct_coeff_table_6_address0 = tmp_i_20_fu_344_p1;

assign dct_coeff_table_7_address0 = tmp_i_20_fu_344_p1;

assign dst_offset_cast_i_fu_308_p1 = i_2_i_reg_274;

assign grp_fu_458_p0 = grp_fu_458_p00;

assign grp_fu_458_p00 = dct_coeff_table_0_q0;

assign grp_fu_507_p2 = 29'd4096;

assign i_fu_302_p2 = (i_2_i_reg_274 + 4'd1);

assign k_fu_338_p2 = (k_i_reg_285 + 4'd1);

assign tmp3_fu_437_p2 = ($signed(tmp4_reg_634) + $signed(tmp5_reg_639));

assign tmp_19_cast_fu_328_p1 = tmp_s_fu_320_p3;

assign tmp_20_cast_fu_429_p1 = ap_reg_pp0_iter1_tmp_6_reg_579;

assign tmp_2_fu_296_p2 = ((i_2_i_reg_274 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_3_i_fu_441_p2 = (tmp_fu_433_p2 + tmp3_fu_437_p2);

assign tmp_6_fu_360_p2 = (tmp_19_cast_reg_525 + tmp_i_cast_fu_356_p1);

assign tmp_fu_433_p2 = ($signed(tmp1_reg_624) + $signed(tmp2_reg_629));

assign tmp_i_20_fu_344_p1 = k_i_reg_285;

assign tmp_i_cast_fu_356_p1 = k_i_reg_285;

assign tmp_i_fu_332_p2 = ((k_i_reg_285 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_s_fu_320_p3 = {{i_2_i_reg_274}, {3'd0}};

always @ (posedge ap_clk) begin
    tmp_19_cast_reg_525[2:0] <= 3'b000;
    tmp_19_cast_reg_525[7] <= 1'b0;
end

endmodule //Loop_Col_DCT_Loop_pr