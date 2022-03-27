// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-1-e,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=6.351000,HLS_SYN_LAT=476,HLS_SYN_TPT=343,HLS_SYN_MEM=3,HLS_SYN_DSP=8,HLS_SYN_FF=950,HLS_SYN_LUT=1878}" *)

module dct (
        ap_clk,
        ap_rst,
        input_r_address0,
        input_r_ce0,
        input_r_d0,
        input_r_q0,
        input_r_we0,
        input_r_address1,
        input_r_ce1,
        input_r_d1,
        input_r_q1,
        input_r_we1,
        output_r_address0,
        output_r_ce0,
        output_r_d0,
        output_r_q0,
        output_r_we0,
        output_r_address1,
        output_r_ce1,
        output_r_d1,
        output_r_q1,
        output_r_we1,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst;
output  [5:0] input_r_address0;
output   input_r_ce0;
output  [15:0] input_r_d0;
input  [15:0] input_r_q0;
output   input_r_we0;
output  [5:0] input_r_address1;
output   input_r_ce1;
output  [15:0] input_r_d1;
input  [15:0] input_r_q1;
output   input_r_we1;
output  [5:0] output_r_address0;
output   output_r_ce0;
output  [15:0] output_r_d0;
input  [15:0] output_r_q0;
output   output_r_we0;
output  [5:0] output_r_address1;
output   output_r_ce1;
output  [15:0] output_r_d1;
input  [15:0] output_r_q1;
output   output_r_we1;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

wire   [15:0] buf_2d_in_0_i_q0;
wire   [15:0] buf_2d_in_0_t_q0;
wire   [15:0] buf_2d_in_1_i_q0;
wire   [15:0] buf_2d_in_1_t_q0;
wire   [15:0] buf_2d_in_2_i_q0;
wire   [15:0] buf_2d_in_2_t_q0;
wire   [15:0] buf_2d_in_3_i_q0;
wire   [15:0] buf_2d_in_3_t_q0;
wire   [15:0] buf_2d_in_4_i_q0;
wire   [15:0] buf_2d_in_4_t_q0;
wire   [15:0] buf_2d_in_5_i_q0;
wire   [15:0] buf_2d_in_5_t_q0;
wire   [15:0] buf_2d_in_6_i_q0;
wire   [15:0] buf_2d_in_6_t_q0;
wire   [15:0] buf_2d_in_7_i_q0;
wire   [15:0] buf_2d_in_7_t_q0;
wire   [15:0] buf_2d_out_i_q0;
wire   [15:0] buf_2d_out_t_q0;
wire    read_data_U0_ap_start;
wire    read_data_U0_ap_done;
wire    read_data_U0_ap_continue;
wire    read_data_U0_ap_idle;
wire    read_data_U0_ap_ready;
wire   [5:0] read_data_U0_input_r_address0;
wire    read_data_U0_input_r_ce0;
wire   [2:0] read_data_U0_buf_0_address0;
wire    read_data_U0_buf_0_ce0;
wire    read_data_U0_buf_0_we0;
wire   [15:0] read_data_U0_buf_0_d0;
wire   [2:0] read_data_U0_buf_1_address0;
wire    read_data_U0_buf_1_ce0;
wire    read_data_U0_buf_1_we0;
wire   [15:0] read_data_U0_buf_1_d0;
wire   [2:0] read_data_U0_buf_2_address0;
wire    read_data_U0_buf_2_ce0;
wire    read_data_U0_buf_2_we0;
wire   [15:0] read_data_U0_buf_2_d0;
wire   [2:0] read_data_U0_buf_3_address0;
wire    read_data_U0_buf_3_ce0;
wire    read_data_U0_buf_3_we0;
wire   [15:0] read_data_U0_buf_3_d0;
wire   [2:0] read_data_U0_buf_4_address0;
wire    read_data_U0_buf_4_ce0;
wire    read_data_U0_buf_4_we0;
wire   [15:0] read_data_U0_buf_4_d0;
wire   [2:0] read_data_U0_buf_5_address0;
wire    read_data_U0_buf_5_ce0;
wire    read_data_U0_buf_5_we0;
wire   [15:0] read_data_U0_buf_5_d0;
wire   [2:0] read_data_U0_buf_6_address0;
wire    read_data_U0_buf_6_ce0;
wire    read_data_U0_buf_6_we0;
wire   [15:0] read_data_U0_buf_6_d0;
wire   [2:0] read_data_U0_buf_7_address0;
wire    read_data_U0_buf_7_ce0;
wire    read_data_U0_buf_7_we0;
wire   [15:0] read_data_U0_buf_7_d0;
wire    ap_channel_done_buf_2d_in_7;
wire    read_data_U0_buf_7_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_7;
wire    ap_sync_channel_write_buf_2d_in_7;
wire    ap_channel_done_buf_2d_in_6;
wire    read_data_U0_buf_6_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_6;
wire    ap_sync_channel_write_buf_2d_in_6;
wire    ap_channel_done_buf_2d_in_5;
wire    read_data_U0_buf_5_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_5;
wire    ap_sync_channel_write_buf_2d_in_5;
wire    ap_channel_done_buf_2d_in_4;
wire    read_data_U0_buf_4_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_4;
wire    ap_sync_channel_write_buf_2d_in_4;
wire    ap_channel_done_buf_2d_in_3;
wire    read_data_U0_buf_3_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_3;
wire    ap_sync_channel_write_buf_2d_in_3;
wire    ap_channel_done_buf_2d_in_2;
wire    read_data_U0_buf_2_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_2;
wire    ap_sync_channel_write_buf_2d_in_2;
wire    ap_channel_done_buf_2d_in_1;
wire    read_data_U0_buf_1_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_1;
wire    ap_sync_channel_write_buf_2d_in_1;
wire    ap_channel_done_buf_2d_in_0;
wire    read_data_U0_buf_0_full_n;
reg    ap_sync_reg_channel_write_buf_2d_in_0;
wire    ap_sync_channel_write_buf_2d_in_0;
wire    dct_2d_U0_ap_start;
wire    dct_2d_U0_ap_done;
wire    dct_2d_U0_ap_continue;
wire    dct_2d_U0_ap_idle;
wire    dct_2d_U0_ap_ready;
wire   [2:0] dct_2d_U0_in_block_0_address0;
wire    dct_2d_U0_in_block_0_ce0;
wire   [2:0] dct_2d_U0_in_block_1_address0;
wire    dct_2d_U0_in_block_1_ce0;
wire   [2:0] dct_2d_U0_in_block_2_address0;
wire    dct_2d_U0_in_block_2_ce0;
wire   [2:0] dct_2d_U0_in_block_3_address0;
wire    dct_2d_U0_in_block_3_ce0;
wire   [2:0] dct_2d_U0_in_block_4_address0;
wire    dct_2d_U0_in_block_4_ce0;
wire   [2:0] dct_2d_U0_in_block_5_address0;
wire    dct_2d_U0_in_block_5_ce0;
wire   [2:0] dct_2d_U0_in_block_6_address0;
wire    dct_2d_U0_in_block_6_ce0;
wire   [2:0] dct_2d_U0_in_block_7_address0;
wire    dct_2d_U0_in_block_7_ce0;
wire   [5:0] dct_2d_U0_out_block_address0;
wire    dct_2d_U0_out_block_ce0;
wire    dct_2d_U0_out_block_we0;
wire   [15:0] dct_2d_U0_out_block_d0;
wire    ap_channel_done_buf_2d_out;
wire    dct_2d_U0_out_block_full_n;
wire    write_data_U0_ap_start;
wire    write_data_U0_ap_done;
wire    write_data_U0_ap_continue;
wire    write_data_U0_ap_idle;
wire    write_data_U0_ap_ready;
wire   [5:0] write_data_U0_buf_r_address0;
wire    write_data_U0_buf_r_ce0;
wire   [5:0] write_data_U0_output_r_address0;
wire    write_data_U0_output_r_ce0;
wire    write_data_U0_output_r_we0;
wire   [15:0] write_data_U0_output_r_d0;
wire    ap_sync_continue;
wire    buf_2d_in_0_i_full_n;
wire    buf_2d_in_0_t_empty_n;
wire    buf_2d_in_1_i_full_n;
wire    buf_2d_in_1_t_empty_n;
wire    buf_2d_in_2_i_full_n;
wire    buf_2d_in_2_t_empty_n;
wire    buf_2d_in_3_i_full_n;
wire    buf_2d_in_3_t_empty_n;
wire    buf_2d_in_4_i_full_n;
wire    buf_2d_in_4_t_empty_n;
wire    buf_2d_in_5_i_full_n;
wire    buf_2d_in_5_t_empty_n;
wire    buf_2d_in_6_i_full_n;
wire    buf_2d_in_6_t_empty_n;
wire    buf_2d_in_7_i_full_n;
wire    buf_2d_in_7_t_empty_n;
wire    buf_2d_out_i_full_n;
wire    buf_2d_out_t_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    read_data_U0_start_full_n;
wire    read_data_U0_start_write;
wire    dct_2d_U0_start_full_n;
wire    dct_2d_U0_start_write;
wire    write_data_U0_start_full_n;
wire    write_data_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_buf_2d_in_7 = 1'b0;
#0 ap_sync_reg_channel_write_buf_2d_in_6 = 1'b0;
#0 ap_sync_reg_channel_write_buf_2d_in_5 = 1'b0;
#0 ap_sync_reg_channel_write_buf_2d_in_4 = 1'b0;
#0 ap_sync_reg_channel_write_buf_2d_in_3 = 1'b0;
#0 ap_sync_reg_channel_write_buf_2d_in_2 = 1'b0;
#0 ap_sync_reg_channel_write_buf_2d_in_1 = 1'b0;
#0 ap_sync_reg_channel_write_buf_2d_in_0 = 1'b0;
end

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_0_address0),
    .i_ce0(read_data_U0_buf_0_ce0),
    .i_we0(read_data_U0_buf_0_we0),
    .i_d0(read_data_U0_buf_0_d0),
    .i_q0(buf_2d_in_0_i_q0),
    .t_address0(dct_2d_U0_in_block_0_address0),
    .t_ce0(dct_2d_U0_in_block_0_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_0_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_0_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_0),
    .t_empty_n(buf_2d_in_0_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_1_address0),
    .i_ce0(read_data_U0_buf_1_ce0),
    .i_we0(read_data_U0_buf_1_we0),
    .i_d0(read_data_U0_buf_1_d0),
    .i_q0(buf_2d_in_1_i_q0),
    .t_address0(dct_2d_U0_in_block_1_address0),
    .t_ce0(dct_2d_U0_in_block_1_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_1_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_1_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_1),
    .t_empty_n(buf_2d_in_1_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_2_address0),
    .i_ce0(read_data_U0_buf_2_ce0),
    .i_we0(read_data_U0_buf_2_we0),
    .i_d0(read_data_U0_buf_2_d0),
    .i_q0(buf_2d_in_2_i_q0),
    .t_address0(dct_2d_U0_in_block_2_address0),
    .t_ce0(dct_2d_U0_in_block_2_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_2_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_2_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_2),
    .t_empty_n(buf_2d_in_2_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_3_address0),
    .i_ce0(read_data_U0_buf_3_ce0),
    .i_we0(read_data_U0_buf_3_we0),
    .i_d0(read_data_U0_buf_3_d0),
    .i_q0(buf_2d_in_3_i_q0),
    .t_address0(dct_2d_U0_in_block_3_address0),
    .t_ce0(dct_2d_U0_in_block_3_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_3_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_3_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_3),
    .t_empty_n(buf_2d_in_3_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_4_address0),
    .i_ce0(read_data_U0_buf_4_ce0),
    .i_we0(read_data_U0_buf_4_we0),
    .i_d0(read_data_U0_buf_4_d0),
    .i_q0(buf_2d_in_4_i_q0),
    .t_address0(dct_2d_U0_in_block_4_address0),
    .t_ce0(dct_2d_U0_in_block_4_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_4_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_4_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_4),
    .t_empty_n(buf_2d_in_4_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_5_address0),
    .i_ce0(read_data_U0_buf_5_ce0),
    .i_we0(read_data_U0_buf_5_we0),
    .i_d0(read_data_U0_buf_5_d0),
    .i_q0(buf_2d_in_5_i_q0),
    .t_address0(dct_2d_U0_in_block_5_address0),
    .t_ce0(dct_2d_U0_in_block_5_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_5_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_5_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_5),
    .t_empty_n(buf_2d_in_5_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_6_address0),
    .i_ce0(read_data_U0_buf_6_ce0),
    .i_we0(read_data_U0_buf_6_we0),
    .i_d0(read_data_U0_buf_6_d0),
    .i_q0(buf_2d_in_6_i_q0),
    .t_address0(dct_2d_U0_in_block_6_address0),
    .t_ce0(dct_2d_U0_in_block_6_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_6_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_6_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_6),
    .t_empty_n(buf_2d_in_6_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_in_0 #(
    .DataWidth( 16 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_7_address0),
    .i_ce0(read_data_U0_buf_7_ce0),
    .i_we0(read_data_U0_buf_7_we0),
    .i_d0(read_data_U0_buf_7_d0),
    .i_q0(buf_2d_in_7_i_q0),
    .t_address0(dct_2d_U0_in_block_7_address0),
    .t_ce0(dct_2d_U0_in_block_7_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_in_7_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_7_i_full_n),
    .i_write(ap_channel_done_buf_2d_in_7),
    .t_empty_n(buf_2d_in_7_t_empty_n),
    .t_read(dct_2d_U0_ap_ready)
);

dct_buf_2d_out #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(dct_2d_U0_out_block_address0),
    .i_ce0(dct_2d_U0_out_block_ce0),
    .i_we0(dct_2d_U0_out_block_we0),
    .i_d0(dct_2d_U0_out_block_d0),
    .i_q0(buf_2d_out_i_q0),
    .t_address0(write_data_U0_buf_r_address0),
    .t_ce0(write_data_U0_buf_r_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_out_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_out_i_full_n),
    .i_write(dct_2d_U0_ap_done),
    .t_empty_n(buf_2d_out_t_empty_n),
    .t_read(write_data_U0_ap_ready)
);

read_data read_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(read_data_U0_ap_start),
    .ap_done(read_data_U0_ap_done),
    .ap_continue(read_data_U0_ap_continue),
    .ap_idle(read_data_U0_ap_idle),
    .ap_ready(read_data_U0_ap_ready),
    .input_r_address0(read_data_U0_input_r_address0),
    .input_r_ce0(read_data_U0_input_r_ce0),
    .input_r_q0(input_r_q0),
    .buf_0_address0(read_data_U0_buf_0_address0),
    .buf_0_ce0(read_data_U0_buf_0_ce0),
    .buf_0_we0(read_data_U0_buf_0_we0),
    .buf_0_d0(read_data_U0_buf_0_d0),
    .buf_1_address0(read_data_U0_buf_1_address0),
    .buf_1_ce0(read_data_U0_buf_1_ce0),
    .buf_1_we0(read_data_U0_buf_1_we0),
    .buf_1_d0(read_data_U0_buf_1_d0),
    .buf_2_address0(read_data_U0_buf_2_address0),
    .buf_2_ce0(read_data_U0_buf_2_ce0),
    .buf_2_we0(read_data_U0_buf_2_we0),
    .buf_2_d0(read_data_U0_buf_2_d0),
    .buf_3_address0(read_data_U0_buf_3_address0),
    .buf_3_ce0(read_data_U0_buf_3_ce0),
    .buf_3_we0(read_data_U0_buf_3_we0),
    .buf_3_d0(read_data_U0_buf_3_d0),
    .buf_4_address0(read_data_U0_buf_4_address0),
    .buf_4_ce0(read_data_U0_buf_4_ce0),
    .buf_4_we0(read_data_U0_buf_4_we0),
    .buf_4_d0(read_data_U0_buf_4_d0),
    .buf_5_address0(read_data_U0_buf_5_address0),
    .buf_5_ce0(read_data_U0_buf_5_ce0),
    .buf_5_we0(read_data_U0_buf_5_we0),
    .buf_5_d0(read_data_U0_buf_5_d0),
    .buf_6_address0(read_data_U0_buf_6_address0),
    .buf_6_ce0(read_data_U0_buf_6_ce0),
    .buf_6_we0(read_data_U0_buf_6_we0),
    .buf_6_d0(read_data_U0_buf_6_d0),
    .buf_7_address0(read_data_U0_buf_7_address0),
    .buf_7_ce0(read_data_U0_buf_7_ce0),
    .buf_7_we0(read_data_U0_buf_7_we0),
    .buf_7_d0(read_data_U0_buf_7_d0)
);

dct_2d dct_2d_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(dct_2d_U0_ap_start),
    .ap_done(dct_2d_U0_ap_done),
    .ap_continue(dct_2d_U0_ap_continue),
    .ap_idle(dct_2d_U0_ap_idle),
    .ap_ready(dct_2d_U0_ap_ready),
    .in_block_0_address0(dct_2d_U0_in_block_0_address0),
    .in_block_0_ce0(dct_2d_U0_in_block_0_ce0),
    .in_block_0_q0(buf_2d_in_0_t_q0),
    .in_block_1_address0(dct_2d_U0_in_block_1_address0),
    .in_block_1_ce0(dct_2d_U0_in_block_1_ce0),
    .in_block_1_q0(buf_2d_in_1_t_q0),
    .in_block_2_address0(dct_2d_U0_in_block_2_address0),
    .in_block_2_ce0(dct_2d_U0_in_block_2_ce0),
    .in_block_2_q0(buf_2d_in_2_t_q0),
    .in_block_3_address0(dct_2d_U0_in_block_3_address0),
    .in_block_3_ce0(dct_2d_U0_in_block_3_ce0),
    .in_block_3_q0(buf_2d_in_3_t_q0),
    .in_block_4_address0(dct_2d_U0_in_block_4_address0),
    .in_block_4_ce0(dct_2d_U0_in_block_4_ce0),
    .in_block_4_q0(buf_2d_in_4_t_q0),
    .in_block_5_address0(dct_2d_U0_in_block_5_address0),
    .in_block_5_ce0(dct_2d_U0_in_block_5_ce0),
    .in_block_5_q0(buf_2d_in_5_t_q0),
    .in_block_6_address0(dct_2d_U0_in_block_6_address0),
    .in_block_6_ce0(dct_2d_U0_in_block_6_ce0),
    .in_block_6_q0(buf_2d_in_6_t_q0),
    .in_block_7_address0(dct_2d_U0_in_block_7_address0),
    .in_block_7_ce0(dct_2d_U0_in_block_7_ce0),
    .in_block_7_q0(buf_2d_in_7_t_q0),
    .out_block_address0(dct_2d_U0_out_block_address0),
    .out_block_ce0(dct_2d_U0_out_block_ce0),
    .out_block_we0(dct_2d_U0_out_block_we0),
    .out_block_d0(dct_2d_U0_out_block_d0)
);

write_data write_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(write_data_U0_ap_start),
    .ap_done(write_data_U0_ap_done),
    .ap_continue(write_data_U0_ap_continue),
    .ap_idle(write_data_U0_ap_idle),
    .ap_ready(write_data_U0_ap_ready),
    .buf_r_address0(write_data_U0_buf_r_address0),
    .buf_r_ce0(write_data_U0_buf_r_ce0),
    .buf_r_q0(buf_2d_out_t_q0),
    .output_r_address0(write_data_U0_output_r_address0),
    .output_r_ce0(write_data_U0_output_r_ce0),
    .output_r_we0(write_data_U0_output_r_we0),
    .output_r_d0(write_data_U0_output_r_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_0 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_0 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_0 <= ap_sync_channel_write_buf_2d_in_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_1 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_1 <= ap_sync_channel_write_buf_2d_in_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_2 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_2 <= ap_sync_channel_write_buf_2d_in_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_3 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_3 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_3 <= ap_sync_channel_write_buf_2d_in_3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_4 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_4 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_4 <= ap_sync_channel_write_buf_2d_in_4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_5 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_5 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_5 <= ap_sync_channel_write_buf_2d_in_5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_6 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_6 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_6 <= ap_sync_channel_write_buf_2d_in_6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_buf_2d_in_7 <= 1'b0;
    end else begin
        if (((read_data_U0_ap_done & read_data_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_buf_2d_in_7 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_buf_2d_in_7 <= ap_sync_channel_write_buf_2d_in_7;
        end
    end
end

assign ap_channel_done_buf_2d_in_0 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_0 ^ 1'b1));

assign ap_channel_done_buf_2d_in_1 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_1 ^ 1'b1));

assign ap_channel_done_buf_2d_in_2 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_2 ^ 1'b1));

assign ap_channel_done_buf_2d_in_3 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_3 ^ 1'b1));

assign ap_channel_done_buf_2d_in_4 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_4 ^ 1'b1));

assign ap_channel_done_buf_2d_in_5 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_5 ^ 1'b1));

assign ap_channel_done_buf_2d_in_6 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_6 ^ 1'b1));

assign ap_channel_done_buf_2d_in_7 = (read_data_U0_ap_done & (ap_sync_reg_channel_write_buf_2d_in_7 ^ 1'b1));

assign ap_channel_done_buf_2d_out = dct_2d_U0_ap_done;

assign ap_done = write_data_U0_ap_done;

assign ap_idle = (write_data_U0_ap_idle & read_data_U0_ap_idle & (buf_2d_out_t_empty_n ^ 1'b1) & (buf_2d_in_7_t_empty_n ^ 1'b1) & (buf_2d_in_6_t_empty_n ^ 1'b1) & (buf_2d_in_5_t_empty_n ^ 1'b1) & (buf_2d_in_4_t_empty_n ^ 1'b1) & (buf_2d_in_3_t_empty_n ^ 1'b1) & (buf_2d_in_2_t_empty_n ^ 1'b1) & (buf_2d_in_1_t_empty_n ^ 1'b1) & (buf_2d_in_0_t_empty_n ^ 1'b1) & dct_2d_U0_ap_idle);

assign ap_ready = read_data_U0_ap_ready;

assign ap_sync_channel_write_buf_2d_in_0 = ((read_data_U0_buf_0_full_n & ap_channel_done_buf_2d_in_0) | ap_sync_reg_channel_write_buf_2d_in_0);

assign ap_sync_channel_write_buf_2d_in_1 = ((read_data_U0_buf_1_full_n & ap_channel_done_buf_2d_in_1) | ap_sync_reg_channel_write_buf_2d_in_1);

assign ap_sync_channel_write_buf_2d_in_2 = ((read_data_U0_buf_2_full_n & ap_channel_done_buf_2d_in_2) | ap_sync_reg_channel_write_buf_2d_in_2);

assign ap_sync_channel_write_buf_2d_in_3 = ((read_data_U0_buf_3_full_n & ap_channel_done_buf_2d_in_3) | ap_sync_reg_channel_write_buf_2d_in_3);

assign ap_sync_channel_write_buf_2d_in_4 = ((read_data_U0_buf_4_full_n & ap_channel_done_buf_2d_in_4) | ap_sync_reg_channel_write_buf_2d_in_4);

assign ap_sync_channel_write_buf_2d_in_5 = ((read_data_U0_buf_5_full_n & ap_channel_done_buf_2d_in_5) | ap_sync_reg_channel_write_buf_2d_in_5);

assign ap_sync_channel_write_buf_2d_in_6 = ((read_data_U0_buf_6_full_n & ap_channel_done_buf_2d_in_6) | ap_sync_reg_channel_write_buf_2d_in_6);

assign ap_sync_channel_write_buf_2d_in_7 = ((read_data_U0_buf_7_full_n & ap_channel_done_buf_2d_in_7) | ap_sync_reg_channel_write_buf_2d_in_7);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = write_data_U0_ap_done;

assign ap_sync_ready = read_data_U0_ap_ready;

assign dct_2d_U0_ap_continue = buf_2d_out_i_full_n;

assign dct_2d_U0_ap_start = (buf_2d_in_7_t_empty_n & buf_2d_in_6_t_empty_n & buf_2d_in_5_t_empty_n & buf_2d_in_4_t_empty_n & buf_2d_in_3_t_empty_n & buf_2d_in_2_t_empty_n & buf_2d_in_1_t_empty_n & buf_2d_in_0_t_empty_n);

assign dct_2d_U0_out_block_full_n = buf_2d_out_i_full_n;

assign dct_2d_U0_start_full_n = 1'b1;

assign dct_2d_U0_start_write = 1'b0;

assign input_r_address0 = read_data_U0_input_r_address0;

assign input_r_address1 = 6'd0;

assign input_r_ce0 = read_data_U0_input_r_ce0;

assign input_r_ce1 = 1'b0;

assign input_r_d0 = 16'd0;

assign input_r_d1 = 16'd0;

assign input_r_we0 = 1'b0;

assign input_r_we1 = 1'b0;

assign output_r_address0 = write_data_U0_output_r_address0;

assign output_r_address1 = 6'd0;

assign output_r_ce0 = write_data_U0_output_r_ce0;

assign output_r_ce1 = 1'b0;

assign output_r_d0 = write_data_U0_output_r_d0;

assign output_r_d1 = 16'd0;

assign output_r_we0 = write_data_U0_output_r_we0;

assign output_r_we1 = 1'b0;

assign read_data_U0_ap_continue = (ap_sync_channel_write_buf_2d_in_7 & ap_sync_channel_write_buf_2d_in_6 & ap_sync_channel_write_buf_2d_in_5 & ap_sync_channel_write_buf_2d_in_4 & ap_sync_channel_write_buf_2d_in_3 & ap_sync_channel_write_buf_2d_in_2 & ap_sync_channel_write_buf_2d_in_1 & ap_sync_channel_write_buf_2d_in_0);

assign read_data_U0_ap_start = ap_start;

assign read_data_U0_buf_0_full_n = buf_2d_in_0_i_full_n;

assign read_data_U0_buf_1_full_n = buf_2d_in_1_i_full_n;

assign read_data_U0_buf_2_full_n = buf_2d_in_2_i_full_n;

assign read_data_U0_buf_3_full_n = buf_2d_in_3_i_full_n;

assign read_data_U0_buf_4_full_n = buf_2d_in_4_i_full_n;

assign read_data_U0_buf_5_full_n = buf_2d_in_5_i_full_n;

assign read_data_U0_buf_6_full_n = buf_2d_in_6_i_full_n;

assign read_data_U0_buf_7_full_n = buf_2d_in_7_i_full_n;

assign read_data_U0_start_full_n = 1'b1;

assign read_data_U0_start_write = 1'b0;

assign write_data_U0_ap_continue = 1'b1;

assign write_data_U0_ap_start = buf_2d_out_t_empty_n;

assign write_data_U0_start_full_n = 1'b1;

assign write_data_U0_start_write = 1'b0;

endmodule //dct
