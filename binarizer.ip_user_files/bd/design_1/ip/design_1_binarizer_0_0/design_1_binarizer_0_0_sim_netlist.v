// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Nov 25 18:56:44 2025
// Host        : DESKTOP-UNQANPL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Darius/Desktop/fac/an3/ssc/project/project.gen/sources_1/bd/design_1/ip/design_1_binarizer_0_0/design_1_binarizer_0_0_sim_netlist.v
// Design      : design_1_binarizer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_binarizer_0_0,binarizer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "binarizer,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_binarizer_0_0
   (CLK,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    S_AXIS_TREADY,
    S_AXIS_TLAST,
    M_AXIS_TDATA,
    M_AXIS_TVALID,
    M_AXIS_TREADY,
    M_AXIS_TLAST);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_TLAST;

  wire CLK;
  wire [30:6]\^M_AXIS_TDATA ;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [31:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;

  assign M_AXIS_TDATA[31] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[30] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[29] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[28] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[27] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[26] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[25] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[24] = \^M_AXIS_TDATA [30];
  assign M_AXIS_TDATA[23] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[22] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[21] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[20] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[19] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[18] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[17] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[16] = \^M_AXIS_TDATA [22];
  assign M_AXIS_TDATA[15] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[14] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[13] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[12] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[11] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[10] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[9] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[8] = \^M_AXIS_TDATA [14];
  assign M_AXIS_TDATA[7] = \^M_AXIS_TDATA [6];
  assign M_AXIS_TDATA[6] = \^M_AXIS_TDATA [6];
  assign M_AXIS_TDATA[5] = \^M_AXIS_TDATA [6];
  assign M_AXIS_TDATA[4] = \^M_AXIS_TDATA [6];
  assign M_AXIS_TDATA[3] = \^M_AXIS_TDATA [6];
  assign M_AXIS_TDATA[2] = \^M_AXIS_TDATA [6];
  assign M_AXIS_TDATA[1] = \^M_AXIS_TDATA [6];
  assign M_AXIS_TDATA[0] = \^M_AXIS_TDATA [6];
  design_1_binarizer_0_0_binarizer U0
       (.CLK(CLK),
        .M_AXIS_TDATA({\^M_AXIS_TDATA [30],\^M_AXIS_TDATA [22],\^M_AXIS_TDATA [14],\^M_AXIS_TDATA [6]}),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA({S_AXIS_TDATA[31],S_AXIS_TDATA[23],S_AXIS_TDATA[15],S_AXIS_TDATA[7]}),
        .S_AXIS_TLAST(S_AXIS_TLAST),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "binarizer" *) 
module design_1_binarizer_0_0_binarizer
   (S_AXIS_TREADY,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TLAST,
    M_AXIS_TREADY,
    CLK,
    S_AXIS_TVALID,
    S_AXIS_TDATA,
    S_AXIS_TLAST);
  output S_AXIS_TREADY;
  output M_AXIS_TVALID;
  output [3:0]M_AXIS_TDATA;
  output M_AXIS_TLAST;
  input M_AXIS_TREADY;
  input CLK;
  input S_AXIS_TVALID;
  input [3:0]S_AXIS_TDATA;
  input S_AXIS_TLAST;

  wire CLK;
  wire [3:0]M_AXIS_TDATA;
  wire \M_AXIS_TDATA[15]_i_1_n_0 ;
  wire \M_AXIS_TDATA[23]_i_1_n_0 ;
  wire \M_AXIS_TDATA[31]_i_1_n_0 ;
  wire \M_AXIS_TDATA[7]_i_1_n_0 ;
  wire M_AXIS_TLAST;
  wire M_AXIS_TLAST_i_1_n_0;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [3:0]S_AXIS_TDATA;
  wire S_AXIS_TLAST;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;

  LUT4 #(
    .INIT(16'hCAAA)) 
    \M_AXIS_TDATA[15]_i_1 
       (.I0(M_AXIS_TDATA[1]),
        .I1(S_AXIS_TDATA[1]),
        .I2(S_AXIS_TVALID),
        .I3(M_AXIS_TREADY),
        .O(\M_AXIS_TDATA[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCAAA)) 
    \M_AXIS_TDATA[23]_i_1 
       (.I0(M_AXIS_TDATA[2]),
        .I1(S_AXIS_TDATA[2]),
        .I2(S_AXIS_TVALID),
        .I3(M_AXIS_TREADY),
        .O(\M_AXIS_TDATA[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCAAA)) 
    \M_AXIS_TDATA[31]_i_1 
       (.I0(M_AXIS_TDATA[3]),
        .I1(S_AXIS_TDATA[3]),
        .I2(S_AXIS_TVALID),
        .I3(M_AXIS_TREADY),
        .O(\M_AXIS_TDATA[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCAAA)) 
    \M_AXIS_TDATA[7]_i_1 
       (.I0(M_AXIS_TDATA[0]),
        .I1(S_AXIS_TDATA[0]),
        .I2(S_AXIS_TVALID),
        .I3(M_AXIS_TREADY),
        .O(\M_AXIS_TDATA[7]_i_1_n_0 ));
  FDRE \M_AXIS_TDATA_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\M_AXIS_TDATA[15]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[1]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\M_AXIS_TDATA[23]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[2]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\M_AXIS_TDATA[31]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[3]),
        .R(1'b0));
  FDRE \M_AXIS_TDATA_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\M_AXIS_TDATA[7]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    M_AXIS_TLAST_i_1
       (.I0(S_AXIS_TLAST),
        .I1(S_AXIS_TVALID),
        .I2(M_AXIS_TREADY),
        .I3(M_AXIS_TLAST),
        .O(M_AXIS_TLAST_i_1_n_0));
  FDRE M_AXIS_TLAST_reg
       (.C(CLK),
        .CE(1'b1),
        .D(M_AXIS_TLAST_i_1_n_0),
        .Q(M_AXIS_TLAST),
        .R(1'b0));
  FDRE M_AXIS_TVALID_reg
       (.C(CLK),
        .CE(1'b1),
        .D(S_AXIS_TVALID),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
  FDRE S_AXIS_TREADY_reg
       (.C(CLK),
        .CE(1'b1),
        .D(M_AXIS_TREADY),
        .Q(S_AXIS_TREADY),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
