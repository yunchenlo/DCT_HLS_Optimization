// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_2d (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_block_address0,
        in_block_ce0,
        in_block_q0,
        in_block_address1,
        in_block_ce1,
        in_block_q1,
        out_block_address0,
        out_block_ce0,
        out_block_we0,
        out_block_d0
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_pp0_stage0 = 9'd8;
parameter    ap_ST_fsm_state6 = 9'd16;
parameter    ap_ST_fsm_state7 = 9'd32;
parameter    ap_ST_fsm_state8 = 9'd64;
parameter    ap_ST_fsm_pp1_stage0 = 9'd128;
parameter    ap_ST_fsm_state11 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] in_block_address0;
output   in_block_ce0;
input  [15:0] in_block_q0;
output  [5:0] in_block_address1;
output   in_block_ce1;
input  [15:0] in_block_q1;
output  [5:0] out_block_address0;
output   out_block_ce0;
output   out_block_we0;
output  [15:0] out_block_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_block_ce0;
reg in_block_ce1;
reg out_block_ce0;
reg out_block_we0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_147;
reg   [3:0] j_reg_158;
reg   [3:0] i_1_reg_169;
reg   [6:0] indvar_flatten1_reg_192;
reg   [3:0] j_1_reg_203;
reg   [3:0] i_3_reg_214;
wire   [0:0] tmp_fu_254_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] i_4_fu_260_p2;
reg   [3:0] i_4_reg_478;
wire   [0:0] exitcond_flatten_fu_266_p2;
reg   [0:0] exitcond_flatten_reg_483;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] indvar_flatten_next_fu_272_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] i_1_mid2_fu_290_p3;
reg   [3:0] i_1_mid2_reg_492;
wire   [3:0] tmp_3_mid2_v_fu_298_p3;
reg   [3:0] tmp_3_mid2_v_reg_497;
wire   [3:0] i_6_fu_333_p2;
wire   [0:0] tmp_4_fu_364_p2;
wire    ap_CS_fsm_state7;
wire   [3:0] i_5_fu_370_p2;
reg   [3:0] i_5_reg_517;
wire   [0:0] exitcond_flatten1_fu_376_p2;
reg   [0:0] exitcond_flatten1_reg_522;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state9_pp1_stage0_iter0;
wire    ap_block_state10_pp1_stage0_iter1;
wire    ap_block_pp1_stage0_11001;
wire   [6:0] indvar_flatten_next1_fu_382_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [3:0] i_3_mid2_fu_400_p3;
reg   [3:0] i_3_mid2_reg_531;
wire   [3:0] tmp_9_mid2_v_fu_408_p3;
reg   [3:0] tmp_9_mid2_v_reg_536;
wire   [3:0] i_7_fu_443_p2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state9;
reg    ap_enable_reg_pp1_iter1;
reg   [5:0] row_outbuf_address0;
reg    row_outbuf_ce0;
reg    row_outbuf_we0;
wire   [15:0] row_outbuf_q0;
reg   [5:0] col_outbuf_address0;
reg    col_outbuf_ce0;
reg    col_outbuf_we0;
wire   [15:0] col_outbuf_q0;
reg   [5:0] col_inbuf_address0;
reg    col_inbuf_ce0;
reg    col_inbuf_we0;
wire   [15:0] col_inbuf_q0;
reg    col_inbuf_ce1;
wire   [15:0] col_inbuf_q1;
wire    grp_dct_1d2_fu_225_ap_start;
wire    grp_dct_1d2_fu_225_ap_done;
wire    grp_dct_1d2_fu_225_ap_idle;
wire    grp_dct_1d2_fu_225_ap_ready;
wire   [5:0] grp_dct_1d2_fu_225_src_address0;
wire    grp_dct_1d2_fu_225_src_ce0;
reg   [15:0] grp_dct_1d2_fu_225_src_q0;
wire   [5:0] grp_dct_1d2_fu_225_src_address1;
wire    grp_dct_1d2_fu_225_src_ce1;
reg   [15:0] grp_dct_1d2_fu_225_src_q1;
reg   [3:0] grp_dct_1d2_fu_225_src_offset;
wire   [5:0] grp_dct_1d2_fu_225_dst_address0;
wire    grp_dct_1d2_fu_225_dst_ce0;
wire    grp_dct_1d2_fu_225_dst_we0;
wire   [15:0] grp_dct_1d2_fu_225_dst_d0;
reg   [3:0] grp_dct_1d2_fu_225_dst_offset;
reg   [3:0] i_reg_135;
wire    ap_CS_fsm_state3;
reg   [3:0] ap_phi_mux_j_phi_fu_162_p4;
wire    ap_block_pp0_stage0;
reg   [3:0] i_2_reg_180;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state6;
reg   [3:0] ap_phi_mux_j_1_phi_fu_207_p4;
wire    ap_block_pp1_stage0;
reg    ap_reg_grp_dct_1d2_fu_225_ap_start;
wire   [63:0] tmp_11_cast_fu_328_p1;
wire   [63:0] tmp_13_cast_fu_359_p1;
wire   [63:0] tmp_19_cast_fu_438_p1;
wire   [63:0] tmp_16_cast_fu_469_p1;
wire   [0:0] tmp_1_fu_284_p2;
wire   [3:0] j_2_fu_278_p2;
wire   [6:0] tmp_8_fu_310_p3;
wire   [7:0] tmp_3_mid2_cast_fu_306_p1;
wire   [7:0] tmp_9_cast_fu_318_p1;
wire   [7:0] tmp_3_fu_322_p2;
wire   [6:0] tmp_2_fu_339_p3;
wire   [7:0] tmp_7_cast_fu_350_p1;
wire   [7:0] tmp_3_cast_fu_346_p1;
wire   [7:0] tmp_5_fu_353_p2;
wire   [0:0] tmp_7_fu_394_p2;
wire   [3:0] j_3_fu_388_p2;
wire   [6:0] tmp_11_fu_420_p3;
wire   [7:0] tmp_9_mid2_cast_fu_416_p1;
wire   [7:0] tmp_18_cast_fu_428_p1;
wire   [7:0] tmp_12_fu_432_p2;
wire   [6:0] tmp_9_fu_449_p3;
wire   [7:0] tmp_10_cast_fu_460_p1;
wire   [7:0] tmp_15_cast_fu_456_p1;
wire   [7:0] tmp_10_fu_463_p2;
wire    ap_CS_fsm_state11;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_reg_grp_dct_1d2_fu_225_ap_start = 1'b0;
end

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
row_outbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(row_outbuf_address0),
    .ce0(row_outbuf_ce0),
    .we0(row_outbuf_we0),
    .d0(grp_dct_1d2_fu_225_dst_d0),
    .q0(row_outbuf_q0)
);

dct_2d_row_outbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_outbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col_outbuf_address0),
    .ce0(col_outbuf_ce0),
    .we0(col_outbuf_we0),
    .d0(grp_dct_1d2_fu_225_dst_d0),
    .q0(col_outbuf_q0)
);

dct_2d_col_inbuf #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_inbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(col_inbuf_address0),
    .ce0(col_inbuf_ce0),
    .we0(col_inbuf_we0),
    .d0(row_outbuf_q0),
    .q0(col_inbuf_q0),
    .address1(grp_dct_1d2_fu_225_src_address1),
    .ce1(col_inbuf_ce1),
    .q1(col_inbuf_q1)
);

dct_1d2 grp_dct_1d2_fu_225(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dct_1d2_fu_225_ap_start),
    .ap_done(grp_dct_1d2_fu_225_ap_done),
    .ap_idle(grp_dct_1d2_fu_225_ap_idle),
    .ap_ready(grp_dct_1d2_fu_225_ap_ready),
    .src_address0(grp_dct_1d2_fu_225_src_address0),
    .src_ce0(grp_dct_1d2_fu_225_src_ce0),
    .src_q0(grp_dct_1d2_fu_225_src_q0),
    .src_address1(grp_dct_1d2_fu_225_src_address1),
    .src_ce1(grp_dct_1d2_fu_225_src_ce1),
    .src_q1(grp_dct_1d2_fu_225_src_q1),
    .src_offset(grp_dct_1d2_fu_225_src_offset),
    .dst_address0(grp_dct_1d2_fu_225_dst_address0),
    .dst_ce0(grp_dct_1d2_fu_225_dst_ce0),
    .dst_we0(grp_dct_1d2_fu_225_dst_we0),
    .dst_d0(grp_dct_1d2_fu_225_dst_d0),
    .dst_offset(grp_dct_1d2_fu_225_dst_offset)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_fu_254_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state4);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((tmp_fu_254_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((tmp_4_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter0_state9) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state9);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((tmp_4_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dct_1d2_fu_225_ap_start <= 1'b0;
    end else begin
        if ((((tmp_fu_254_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((tmp_4_fu_364_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
            ap_reg_grp_dct_1d2_fu_225_ap_start <= 1'b1;
        end else if ((grp_dct_1d2_fu_225_ap_ready == 1'b1)) begin
            ap_reg_grp_dct_1d2_fu_225_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_254_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_1_reg_169 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_266_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_169 <= i_6_fu_333_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_2_reg_180 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (grp_dct_1d2_fu_225_ap_done == 1'b1))) begin
        i_2_reg_180 <= i_5_reg_517;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_4_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        i_3_reg_214 <= 4'd0;
    end else if (((exitcond_flatten1_fu_376_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_3_reg_214 <= i_7_fu_443_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (grp_dct_1d2_fu_225_ap_done == 1'b1))) begin
        i_reg_135 <= i_4_reg_478;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_135 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_4_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        indvar_flatten1_reg_192 <= 7'd0;
    end else if (((exitcond_flatten1_fu_376_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten1_reg_192 <= indvar_flatten_next1_fu_382_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_254_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_reg_147 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_266_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_147 <= indvar_flatten_next_fu_272_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_4_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        j_1_reg_203 <= 4'd0;
    end else if (((exitcond_flatten1_reg_522 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        j_1_reg_203 <= tmp_9_mid2_v_reg_536;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_254_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_158 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_483 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_reg_158 <= tmp_3_mid2_v_reg_497;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten1_reg_522 <= exitcond_flatten1_fu_376_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_483 <= exitcond_flatten_fu_266_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_266_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_mid2_reg_492 <= i_1_mid2_fu_290_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_fu_376_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        i_3_mid2_reg_531 <= i_3_mid2_fu_400_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_4_reg_478 <= i_4_fu_260_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_5_reg_517 <= i_5_fu_370_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_266_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_3_mid2_v_reg_497 <= tmp_3_mid2_v_fu_298_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_fu_376_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        tmp_9_mid2_v_reg_536 <= tmp_9_mid2_v_fu_408_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_266_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_flatten1_fu_376_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten1_reg_522 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_j_1_phi_fu_207_p4 = tmp_9_mid2_v_reg_536;
    end else begin
        ap_phi_mux_j_1_phi_fu_207_p4 = j_1_reg_203;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_483 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_j_phi_fu_162_p4 = tmp_3_mid2_v_reg_497;
    end else begin
        ap_phi_mux_j_phi_fu_162_p4 = j_reg_158;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        col_inbuf_address0 = tmp_13_cast_fu_359_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        col_inbuf_address0 = grp_dct_1d2_fu_225_src_address0;
    end else begin
        col_inbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        col_inbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        col_inbuf_ce0 = grp_dct_1d2_fu_225_src_ce0;
    end else begin
        col_inbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        col_inbuf_ce1 = grp_dct_1d2_fu_225_src_ce1;
    end else begin
        col_inbuf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_483 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        col_inbuf_we0 = 1'b1;
    end else begin
        col_inbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        col_outbuf_address0 = tmp_19_cast_fu_438_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        col_outbuf_address0 = grp_dct_1d2_fu_225_dst_address0;
    end else begin
        col_outbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        col_outbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        col_outbuf_ce0 = grp_dct_1d2_fu_225_dst_ce0;
    end else begin
        col_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        col_outbuf_we0 = grp_dct_1d2_fu_225_dst_we0;
    end else begin
        col_outbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_dct_1d2_fu_225_dst_offset = i_2_reg_180;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_225_dst_offset = i_reg_135;
    end else begin
        grp_dct_1d2_fu_225_dst_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_dct_1d2_fu_225_src_offset = i_2_reg_180;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_225_src_offset = i_reg_135;
    end else begin
        grp_dct_1d2_fu_225_src_offset = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_dct_1d2_fu_225_src_q0 = col_inbuf_q0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_225_src_q0 = in_block_q0;
    end else begin
        grp_dct_1d2_fu_225_src_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_dct_1d2_fu_225_src_q1 = col_inbuf_q1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_dct_1d2_fu_225_src_q1 = in_block_q1;
    end else begin
        grp_dct_1d2_fu_225_src_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_block_ce0 = grp_dct_1d2_fu_225_src_ce0;
    end else begin
        in_block_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_block_ce1 = grp_dct_1d2_fu_225_src_ce1;
    end else begin
        in_block_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        out_block_ce0 = 1'b1;
    end else begin
        out_block_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten1_reg_522 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        out_block_we0 = 1'b1;
    end else begin
        out_block_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        row_outbuf_address0 = tmp_11_cast_fu_328_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        row_outbuf_address0 = grp_dct_1d2_fu_225_dst_address0;
    end else begin
        row_outbuf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        row_outbuf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        row_outbuf_ce0 = grp_dct_1d2_fu_225_dst_ce0;
    end else begin
        row_outbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        row_outbuf_we0 = grp_dct_1d2_fu_225_dst_we0;
    end else begin
        row_outbuf_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_fu_254_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_dct_1d2_fu_225_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond_flatten_fu_266_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_flatten_fu_266_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((tmp_4_fu_364_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_dct_1d2_fu_225_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_flatten1_fu_376_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_flatten1_fu_376_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign exitcond_flatten1_fu_376_p2 = ((indvar_flatten1_reg_192 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_266_p2 = ((indvar_flatten_reg_147 == 7'd64) ? 1'b1 : 1'b0);

assign grp_dct_1d2_fu_225_ap_start = ap_reg_grp_dct_1d2_fu_225_ap_start;

assign i_1_mid2_fu_290_p3 = ((tmp_1_fu_284_p2[0:0] === 1'b1) ? 4'd0 : i_1_reg_169);

assign i_3_mid2_fu_400_p3 = ((tmp_7_fu_394_p2[0:0] === 1'b1) ? 4'd0 : i_3_reg_214);

assign i_4_fu_260_p2 = (i_reg_135 + 4'd1);

assign i_5_fu_370_p2 = (i_2_reg_180 + 4'd1);

assign i_6_fu_333_p2 = (i_1_mid2_fu_290_p3 + 4'd1);

assign i_7_fu_443_p2 = (i_3_mid2_fu_400_p3 + 4'd1);

assign in_block_address0 = grp_dct_1d2_fu_225_src_address0;

assign in_block_address1 = grp_dct_1d2_fu_225_src_address1;

assign indvar_flatten_next1_fu_382_p2 = (indvar_flatten1_reg_192 + 7'd1);

assign indvar_flatten_next_fu_272_p2 = (indvar_flatten_reg_147 + 7'd1);

assign j_2_fu_278_p2 = (ap_phi_mux_j_phi_fu_162_p4 + 4'd1);

assign j_3_fu_388_p2 = (ap_phi_mux_j_1_phi_fu_207_p4 + 4'd1);

assign out_block_address0 = tmp_16_cast_fu_469_p1;

assign out_block_d0 = col_outbuf_q0;

assign tmp_10_cast_fu_460_p1 = i_3_mid2_reg_531;

assign tmp_10_fu_463_p2 = (tmp_10_cast_fu_460_p1 + tmp_15_cast_fu_456_p1);

assign tmp_11_cast_fu_328_p1 = tmp_3_fu_322_p2;

assign tmp_11_fu_420_p3 = {{i_3_mid2_fu_400_p3}, {3'd0}};

assign tmp_12_fu_432_p2 = (tmp_9_mid2_cast_fu_416_p1 + tmp_18_cast_fu_428_p1);

assign tmp_13_cast_fu_359_p1 = tmp_5_fu_353_p2;

assign tmp_15_cast_fu_456_p1 = tmp_9_fu_449_p3;

assign tmp_16_cast_fu_469_p1 = tmp_10_fu_463_p2;

assign tmp_18_cast_fu_428_p1 = tmp_11_fu_420_p3;

assign tmp_19_cast_fu_438_p1 = tmp_12_fu_432_p2;

assign tmp_1_fu_284_p2 = ((i_1_reg_169 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_2_fu_339_p3 = {{tmp_3_mid2_v_reg_497}, {3'd0}};

assign tmp_3_cast_fu_346_p1 = tmp_2_fu_339_p3;

assign tmp_3_fu_322_p2 = (tmp_3_mid2_cast_fu_306_p1 + tmp_9_cast_fu_318_p1);

assign tmp_3_mid2_cast_fu_306_p1 = tmp_3_mid2_v_fu_298_p3;

assign tmp_3_mid2_v_fu_298_p3 = ((tmp_1_fu_284_p2[0:0] === 1'b1) ? j_2_fu_278_p2 : ap_phi_mux_j_phi_fu_162_p4);

assign tmp_4_fu_364_p2 = ((i_2_reg_180 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_5_fu_353_p2 = (tmp_7_cast_fu_350_p1 + tmp_3_cast_fu_346_p1);

assign tmp_7_cast_fu_350_p1 = i_1_mid2_reg_492;

assign tmp_7_fu_394_p2 = ((i_3_reg_214 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_8_fu_310_p3 = {{i_1_mid2_fu_290_p3}, {3'd0}};

assign tmp_9_cast_fu_318_p1 = tmp_8_fu_310_p3;

assign tmp_9_fu_449_p3 = {{tmp_9_mid2_v_reg_536}, {3'd0}};

assign tmp_9_mid2_cast_fu_416_p1 = tmp_9_mid2_v_fu_408_p3;

assign tmp_9_mid2_v_fu_408_p3 = ((tmp_7_fu_394_p2[0:0] === 1'b1) ? j_3_fu_388_p2 : ap_phi_mux_j_1_phi_fu_207_p4);

assign tmp_fu_254_p2 = ((i_reg_135 == 4'd8) ? 1'b1 : 1'b0);

endmodule //dct_2d
