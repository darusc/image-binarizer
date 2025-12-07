-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Nov 25 18:56:44 2025
-- Host        : DESKTOP-UNQANPL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Darius/Desktop/fac/an3/ssc/project/project.gen/sources_1/bd/design_1/ip/design_1_binarizer_0_0/design_1_binarizer_0_0_sim_netlist.vhdl
-- Design      : design_1_binarizer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_binarizer_0_0_binarizer is
  port (
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    CLK : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_TLAST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_binarizer_0_0_binarizer : entity is "binarizer";
end design_1_binarizer_0_0_binarizer;

architecture STRUCTURE of design_1_binarizer_0_0_binarizer is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \M_AXIS_TDATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[23]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \M_AXIS_TDATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal M_AXIS_TLAST_i_1_n_0 : STD_LOGIC;
begin
  M_AXIS_TDATA(3 downto 0) <= \^m_axis_tdata\(3 downto 0);
  M_AXIS_TLAST <= \^m_axis_tlast\;
\M_AXIS_TDATA[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^m_axis_tdata\(1),
      I1 => S_AXIS_TDATA(1),
      I2 => S_AXIS_TVALID,
      I3 => M_AXIS_TREADY,
      O => \M_AXIS_TDATA[15]_i_1_n_0\
    );
\M_AXIS_TDATA[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^m_axis_tdata\(2),
      I1 => S_AXIS_TDATA(2),
      I2 => S_AXIS_TVALID,
      I3 => M_AXIS_TREADY,
      O => \M_AXIS_TDATA[23]_i_1_n_0\
    );
\M_AXIS_TDATA[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^m_axis_tdata\(3),
      I1 => S_AXIS_TDATA(3),
      I2 => S_AXIS_TVALID,
      I3 => M_AXIS_TREADY,
      O => \M_AXIS_TDATA[31]_i_1_n_0\
    );
\M_AXIS_TDATA[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^m_axis_tdata\(0),
      I1 => S_AXIS_TDATA(0),
      I2 => S_AXIS_TVALID,
      I3 => M_AXIS_TREADY,
      O => \M_AXIS_TDATA[7]_i_1_n_0\
    );
\M_AXIS_TDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \M_AXIS_TDATA[15]_i_1_n_0\,
      Q => \^m_axis_tdata\(1),
      R => '0'
    );
\M_AXIS_TDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \M_AXIS_TDATA[23]_i_1_n_0\,
      Q => \^m_axis_tdata\(2),
      R => '0'
    );
\M_AXIS_TDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \M_AXIS_TDATA[31]_i_1_n_0\,
      Q => \^m_axis_tdata\(3),
      R => '0'
    );
\M_AXIS_TDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \M_AXIS_TDATA[7]_i_1_n_0\,
      Q => \^m_axis_tdata\(0),
      R => '0'
    );
M_AXIS_TLAST_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => S_AXIS_TLAST,
      I1 => S_AXIS_TVALID,
      I2 => M_AXIS_TREADY,
      I3 => \^m_axis_tlast\,
      O => M_AXIS_TLAST_i_1_n_0
    );
M_AXIS_TLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => M_AXIS_TLAST_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
M_AXIS_TVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => S_AXIS_TVALID,
      Q => M_AXIS_TVALID,
      R => '0'
    );
S_AXIS_TREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => M_AXIS_TREADY,
      Q => S_AXIS_TREADY,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_binarizer_0_0 is
  port (
    CLK : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TLAST : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TLAST : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_binarizer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_binarizer_0_0 : entity is "design_1_binarizer_0_0,binarizer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_binarizer_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_binarizer_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_binarizer_0_0 : entity is "binarizer,Vivado 2024.1";
end design_1_binarizer_0_0;

architecture STRUCTURE of design_1_binarizer_0_0 is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 30 downto 6 );
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXIS:S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of M_AXIS_TLAST : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute x_interface_info of M_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute x_interface_info of M_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute x_interface_info of S_AXIS_TLAST : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute x_interface_info of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute x_interface_info of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute x_interface_info of M_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute x_interface_parameter of M_AXIS_TDATA : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute x_interface_parameter of S_AXIS_TDATA : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  M_AXIS_TDATA(31) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(30) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(29) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(28) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(27) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(26) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(25) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(24) <= \^m_axis_tdata\(30);
  M_AXIS_TDATA(23) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(22) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(21) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(20) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(19) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(18) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(17) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(16) <= \^m_axis_tdata\(22);
  M_AXIS_TDATA(15) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(14) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(13) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(12) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(11) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(10) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(9) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(8) <= \^m_axis_tdata\(14);
  M_AXIS_TDATA(7) <= \^m_axis_tdata\(6);
  M_AXIS_TDATA(6) <= \^m_axis_tdata\(6);
  M_AXIS_TDATA(5) <= \^m_axis_tdata\(6);
  M_AXIS_TDATA(4) <= \^m_axis_tdata\(6);
  M_AXIS_TDATA(3) <= \^m_axis_tdata\(6);
  M_AXIS_TDATA(2) <= \^m_axis_tdata\(6);
  M_AXIS_TDATA(1) <= \^m_axis_tdata\(6);
  M_AXIS_TDATA(0) <= \^m_axis_tdata\(6);
U0: entity work.design_1_binarizer_0_0_binarizer
     port map (
      CLK => CLK,
      M_AXIS_TDATA(3) => \^m_axis_tdata\(30),
      M_AXIS_TDATA(2) => \^m_axis_tdata\(22),
      M_AXIS_TDATA(1) => \^m_axis_tdata\(14),
      M_AXIS_TDATA(0) => \^m_axis_tdata\(6),
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(3) => S_AXIS_TDATA(31),
      S_AXIS_TDATA(2) => S_AXIS_TDATA(23),
      S_AXIS_TDATA(1) => S_AXIS_TDATA(15),
      S_AXIS_TDATA(0) => S_AXIS_TDATA(7),
      S_AXIS_TLAST => S_AXIS_TLAST,
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID
    );
end STRUCTURE;
