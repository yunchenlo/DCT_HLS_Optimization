// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_Xpose_Row_Outer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        row_outbuf_i_address0,
        row_outbuf_i_ce0,
        row_outbuf_i_q0,
        col_inbuf_0_address0,
        col_inbuf_0_ce0,
        col_inbuf_0_we0,
        col_inbuf_0_d0,
        col_inbuf_1_address0,
        col_inbuf_1_ce0,
        col_inbuf_1_we0,
        col_inbuf_1_d0,
        col_inbuf_2_address0,
        col_inbuf_2_ce0,
        col_inbuf_2_we0,
        col_inbuf_2_d0,
        col_inbuf_3_address0,
        col_inbuf_3_ce0,
        col_inbuf_3_we0,
        col_inbuf_3_d0,
        col_inbuf_4_address0,
        col_inbuf_4_ce0,
        col_inbuf_4_we0,
        col_inbuf_4_d0,
        col_inbuf_5_address0,
        col_inbuf_5_ce0,
        col_inbuf_5_we0,
        col_inbuf_5_d0,
        col_inbuf_6_address0,
        col_inbuf_6_ce0,
        col_inbuf_6_we0,
        col_inbuf_6_d0,
        col_inbuf_7_address0,
        col_inbuf_7_ce0,
        col_inbuf_7_we0,
        col_inbuf_7_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] row_outbuf_i_address0;
output   row_outbuf_i_ce0;
input  [15:0] row_outbuf_i_q0;
output  [2:0] col_inbuf_0_address0;
output   col_inbuf_0_ce0;
output   col_inbuf_0_we0;
output  [15:0] col_inbuf_0_d0;
output  [2:0] col_inbuf_1_address0;
output   col_inbuf_1_ce0;
output   col_inbuf_1_we0;
output  [15:0] col_inbuf_1_d0;
output  [2:0] col_inbuf_2_address0;
output   col_inbuf_2_ce0;
output   col_inbuf_2_we0;
output  [15:0] col_inbuf_2_d0;
output  [2:0] col_inbuf_3_address0;
output   col_inbuf_3_ce0;
output   col_inbuf_3_we0;
output  [15:0] col_inbuf_3_d0;
output  [2:0] col_inbuf_4_address0;
output   col_inbuf_4_ce0;
output   col_inbuf_4_we0;
output  [15:0] col_inbuf_4_d0;
output  [2:0] col_inbuf_5_address0;
output   col_inbuf_5_ce0;
output   col_inbuf_5_we0;
output  [15:0] col_inbuf_5_d0;
output  [2:0] col_inbuf_6_address0;
output   col_inbuf_6_ce0;
output   col_inbuf_6_we0;
output  [15:0] col_inbuf_6_d0;
output  [2:0] col_inbuf_7_address0;
output   col_inbuf_7_ce0;
output   col_inbuf_7_we0;
output  [15:0] col_inbuf_7_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg row_outbuf_i_ce0;
reg col_inbuf_0_ce0;
reg col_inbuf_0_we0;
reg col_inbuf_1_ce0;
reg col_inbuf_1_we0;
reg col_inbuf_2_ce0;
reg col_inbuf_2_we0;
reg col_inbuf_3_ce0;
reg col_inbuf_3_we0;
reg col_inbuf_4_ce0;
reg col_inbuf_4_we0;
reg col_inbuf_5_ce0;
reg col_inbuf_5_we0;
reg col_inbuf_6_ce0;
reg col_inbuf_6_we0;
reg col_inbuf_7_ce0;
reg col_inbuf_7_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_188;
reg   [3:0] j_0_i_reg_199;
reg   [3:0] i_1_i_reg_210;
wire   [0:0] exitcond_flatten_fu_221_p2;
reg   [0:0] exitcond_flatten_reg_309;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] indvar_flatten_next_fu_227_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] tmp_3_mid2_v_fu_253_p3;
reg   [3:0] tmp_3_mid2_v_reg_318;
wire   [2:0] tmp_3_fu_288_p1;
reg   [2:0] tmp_3_reg_329;
wire   [3:0] i_fu_292_p2;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [3:0] ap_phi_mux_j_0_i_phi_fu_203_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_9_cast_fu_283_p1;
wire   [63:0] tmp_3_mid2_fu_298_p1;
wire   [0:0] tmp_s_fu_239_p2;
wire   [3:0] j_fu_233_p2;
wire   [3:0] i_1_i_mid2_fu_245_p3;
wire   [6:0] tmp_fu_265_p3;
wire   [7:0] tmp_8_cast_fu_273_p1;
wire   [7:0] tmp_3_mid2_cast_fu_261_p1;
wire   [7:0] tmp_9_fu_277_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

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
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_1_i_reg_210 <= i_fu_292_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_1_i_reg_210 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_188 <= indvar_flatten_next_fu_227_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_188 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_309 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_0_i_reg_199 <= tmp_3_mid2_v_reg_318;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_i_reg_199 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_flatten_reg_309 <= exitcond_flatten_fu_221_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_3_mid2_v_reg_318 <= tmp_3_mid2_v_fu_253_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_3_reg_329 <= tmp_3_fu_288_p1;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_221_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_309 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_0_i_phi_fu_203_p4 = tmp_3_mid2_v_reg_318;
    end else begin
        ap_phi_mux_j_0_i_phi_fu_203_p4 = j_0_i_reg_199;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_0_ce0 = 1'b1;
    end else begin
        col_inbuf_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_0_we0 = 1'b1;
    end else begin
        col_inbuf_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_1_ce0 = 1'b1;
    end else begin
        col_inbuf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_1_we0 = 1'b1;
    end else begin
        col_inbuf_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_2_ce0 = 1'b1;
    end else begin
        col_inbuf_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_2_we0 = 1'b1;
    end else begin
        col_inbuf_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_3_ce0 = 1'b1;
    end else begin
        col_inbuf_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_3_we0 = 1'b1;
    end else begin
        col_inbuf_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_4_ce0 = 1'b1;
    end else begin
        col_inbuf_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_4_we0 = 1'b1;
    end else begin
        col_inbuf_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_5_ce0 = 1'b1;
    end else begin
        col_inbuf_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_5_we0 = 1'b1;
    end else begin
        col_inbuf_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_6_ce0 = 1'b1;
    end else begin
        col_inbuf_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_6_we0 = 1'b1;
    end else begin
        col_inbuf_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_7_ce0 = 1'b1;
    end else begin
        col_inbuf_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_329 == 3'd7) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_inbuf_7_we0 = 1'b1;
    end else begin
        col_inbuf_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_outbuf_i_ce0 = 1'b1;
    end else begin
        row_outbuf_i_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond_flatten_fu_221_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_flatten_fu_221_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign col_inbuf_0_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_0_d0 = row_outbuf_i_q0;

assign col_inbuf_1_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_1_d0 = row_outbuf_i_q0;

assign col_inbuf_2_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_2_d0 = row_outbuf_i_q0;

assign col_inbuf_3_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_3_d0 = row_outbuf_i_q0;

assign col_inbuf_4_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_4_d0 = row_outbuf_i_q0;

assign col_inbuf_5_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_5_d0 = row_outbuf_i_q0;

assign col_inbuf_6_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_6_d0 = row_outbuf_i_q0;

assign col_inbuf_7_address0 = tmp_3_mid2_fu_298_p1;

assign col_inbuf_7_d0 = row_outbuf_i_q0;

assign exitcond_flatten_fu_221_p2 = ((indvar_flatten_reg_188 == 7'd64) ? 1'b1 : 1'b0);

assign i_1_i_mid2_fu_245_p3 = ((tmp_s_fu_239_p2[0:0] === 1'b1) ? 4'd0 : i_1_i_reg_210);

assign i_fu_292_p2 = (i_1_i_mid2_fu_245_p3 + 4'd1);

assign indvar_flatten_next_fu_227_p2 = (indvar_flatten_reg_188 + 7'd1);

assign j_fu_233_p2 = (4'd1 + ap_phi_mux_j_0_i_phi_fu_203_p4);

assign row_outbuf_i_address0 = tmp_9_cast_fu_283_p1;

assign tmp_3_fu_288_p1 = i_1_i_mid2_fu_245_p3[2:0];

assign tmp_3_mid2_cast_fu_261_p1 = tmp_3_mid2_v_fu_253_p3;

assign tmp_3_mid2_fu_298_p1 = tmp_3_mid2_v_reg_318;

assign tmp_3_mid2_v_fu_253_p3 = ((tmp_s_fu_239_p2[0:0] === 1'b1) ? j_fu_233_p2 : ap_phi_mux_j_0_i_phi_fu_203_p4);

assign tmp_8_cast_fu_273_p1 = tmp_fu_265_p3;

assign tmp_9_cast_fu_283_p1 = tmp_9_fu_277_p2;

assign tmp_9_fu_277_p2 = (tmp_8_cast_fu_273_p1 + tmp_3_mid2_cast_fu_261_p1);

assign tmp_fu_265_p3 = {{i_1_i_mid2_fu_245_p3}, {3'd0}};

assign tmp_s_fu_239_p2 = ((i_1_i_reg_210 == 4'd8) ? 1'b1 : 1'b0);

endmodule //Loop_Xpose_Row_Outer
