-- Design  of D-Flip Flop and Integration using PORT MAP
Library ieee;
use ieee.std_logic_1164.all;

entity dff is
port(clk,clr,d: in std_logic; -- One bit
    q, qbar:out std_logic);
end dff;
--Behavioural style of programming
architecture behave of dff is
    
begin
--DFF 
dff_block:process(clk,clr)
begin
if clr='1' then
        q<='0';
        qbar<='0';
elsif rising_edge(clk) then
        q<=d;
        qbar<=not d;
end if;
end process dff_block;
end behave;
