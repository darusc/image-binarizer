library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pixel_unpacker is
    Port (
        CLK          : in  STD_LOGIC;
        RESET        : in  STD_LOGIC;
        
        -- AXI-Stream input (binarizer)
        S_AXIS_TDATA : in  STD_LOGIC_VECTOR(31 downto 0);
        S_AXIS_TVALID: in  STD_LOGIC;
        S_AXIS_TREADY: out STD_LOGIC;
        S_AXIS_TLAST : in  STD_LOGIC;
        
        -- AXI-Stream output (RGB)
        M_AXIS_TDATA : out STD_LOGIC_VECTOR(23 downto 0);
        M_AXIS_TVALID: out STD_LOGIC;
        M_AXIS_TREADY: in  STD_LOGIC;
        M_AXIS_TLAST : out STD_LOGIC
    );
end pixel_unpacker;

architecture Behavioral of pixel_unpacker is

    signal buff     : STD_LOGIC_VECTOR(31 downto 0);
    signal pixel_idx  : integer range 0 to 3 := 0;
    signal valid_reg  : STD_LOGIC := '0';
    signal tlast_reg  : STD_LOGIC := '0';
    signal s_ready    : STD_LOGIC := '1';

    -- function to replicate 8-bit grayscale to 24-bit RGB
    function gray_to_rgb(g : STD_LOGIC_VECTOR(7 downto 0)) return STD_LOGIC_VECTOR is
        variable rgb : STD_LOGIC_VECTOR(23 downto 0);
    begin
        rgb := g & g & g; -- R = G = B = grayscale
        return rgb;
    end function;

begin

    S_AXIS_TREADY <= s_ready;

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                pixel_idx <= 0;
                valid_reg <= '0';
                M_AXIS_TVALID <= '0';
                M_AXIS_TLAST <= '0';
            else
                -- Load new 32-bit word if all 4 pixels are consumed
                if pixel_idx = 0 and S_AXIS_TVALID = '1' and s_ready = '1' then
                    buff <= S_AXIS_TDATA;
                    tlast_reg <= S_AXIS_TLAST;
                    valid_reg <= '1';
                    pixel_idx <= 0;
                end if;

                -- Output one pixel per cycle
                if valid_reg = '1' and M_AXIS_TREADY = '1' then
                    case pixel_idx is
                        when 0 =>
                            M_AXIS_TDATA <= gray_to_rgb(buff(7 downto 0));
                        when 1 =>
                            M_AXIS_TDATA <= gray_to_rgb(buff(15 downto 8));
                        when 2 =>
                            M_AXIS_TDATA <= gray_to_rgb(buff(23 downto 16));
                        when 3 =>
                            M_AXIS_TDATA <= gray_to_rgb(buff(31 downto 24));
                        when others =>
                            M_AXIS_TDATA <= (others => '0');
                    end case;

                    M_AXIS_TVALID <= '1';
                    M_AXIS_TLAST <= '0';

                    if pixel_idx = 3 then
                        valid_reg <= '0';
                        M_AXIS_TLAST <= tlast_reg; -- pass TLAST on last pixel
                        pixel_idx <= 0;
                    else
                        pixel_idx <= pixel_idx + 1;
                    end if;
                else
                    M_AXIS_TVALID <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
