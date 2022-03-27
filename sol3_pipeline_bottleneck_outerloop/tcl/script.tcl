############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dct_prj
set_top dct
add_files dct.cpp
add_files -tb out.golden.dat
add_files -tb in.dat
add_files -tb dct_test.cpp
open_solution "solution3"
set_part {xcvu9p-flgb2104-1-e}
create_clock -period 8 -name default
source "./dct_prj/solution3/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
