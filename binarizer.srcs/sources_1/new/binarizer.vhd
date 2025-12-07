----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2025 01:18:05 PM
-- Design Name: 
-- Module Name: binarizer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity binarizer is
  Port ( 
        CLK: in STD_LOGIC;
        
        S_AXIS_TDATA: in STD_LOGIC_VECTOR(31 downto 0);
        S_AXIS_TVALID: in STD_LOGIC;
        S_AXIS_TREADY: out STD_LOGIC;
        S_AXIS_TLAST: in STD_LOGIC;
        
        M_AXIS_TDATA: out STD_LOGIC_VECTOR(31 downto 0);
        M_AXIS_TVALID: out STD_LOGIC;
        M_AXIS_TREADY: in STD_LOGIC;
        M_AXIS_TLAST: out STD_LOGIC
  );
end binarizer;

architecture Behavioral of binarizer is

begin

    process(clk)
        variable p0, p1, p2, p3: unsigned(7 downto 0);
        variable o0, o1, o2, o3: unsigned(7 downto 0);
    begin
        if rising_edge(clk) then
            S_AXIS_TREADY <= M_AXIS_TREADY;
            M_AXIS_TVALID <= S_AXIS_TVALID;
            
            if S_AXIS_TVALID = '1' and M_AXIS_TREADY = '1' then
                p0 := unsigned(S_AXIS_TDATA(7 downto 0));
                p1 := unsigned(S_AXIS_TDATA(15 downto 8));
                p2 := unsigned(S_AXIS_TDATA(23 downto 16));
                p3 := unsigned(S_AXIS_TDATA(31 downto 24));
                
                if p0 < 128 then o0 := x"00"; else o0 := x"FF"; end if;
                if p1 < 128 then o1 := x"00"; else o1 := x"FF"; end if;
                if p2 < 128 then o2 := x"00"; else o2 := x"FF"; end if;
                if p3 < 128 then o3 := x"00"; else o3 := x"FF"; end if;
                
                M_AXIS_TDATA <= STD_LOGIC_VECTOR(o3 & o2 & o1 & o0);
                M_AXIS_TLAST <= S_AXIS_TLAST;
            end if;
        end if;
    end process;


end Behavioral;
