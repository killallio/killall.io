-------------------------------------------------------------------------------
--
-- ✄╔╗──╔╗╔╗───╔╗╔╗
-- ✄║║──║║║║───║║║║
-- ✄║║╔╦╣║║║╔══╣║║║─╔╦══╗
-- ✄║╚╝╬╣║║║║╔╗║║║║─╠╣╔╗║
-- ✄║╔╗╣║╚╣╚╣╔╗║╚╣╚╦╣║╚╝║
-- ✄╚╝╚╩╩═╩═╩╝╚╩═╩═╩╩╩══╝
--
-------------------------------------------------------------------------------
--
-- Company: killall.io
-- Author: Joachim Schmidt <joachim.schmidt@semaphore-networks.ch
--
-- Module Name: killallio_sig_sync - arch
-- Target Device: hepia-cores.ch:scalp_node:part0:0.1 xc7z015clg485-2
-- Tool version: 2022.1
-- Description: killallio_sig_sync
--
-- Last update: 2022-06-08
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity killallio_sig_sync is

    port (
        ClkAxCI : in  std_ulogic;
        SigAxSI : in  std_ulogic;
        ClkBxCI : in  std_ulogic;
        SigBxSO : out std_ulogic);

end killallio_sig_sync;

architecture arch of killallio_sig_sync is

    -- Signals declarations
    signal SigAIntxS : std_ulogic := '0';
    signal SigInt0xS : std_ulogic := '0';
    signal SigInt1xS : std_ulogic := '0';
    signal SigBIntxS : std_ulogic := '0';

    -- Attributes declarations
    attribute async_reg     : string;
    attribute shift_extract : string;

    -- Attributes specifications
    attribute async_reg of SigInt1xS     : signal is "true";
    attribute shift_extract of SigInt1xS : signal is "no";

begin

    IOxB : block is
    begin  -- block IOxB

        SigAxAS : SigAIntxS <= SigAxSI;
        SigBxAS : SigBxSO   <= SigBIntxS;

    end block IOxB;

    CDAxP : process (ClkAxCI) is
    begin  -- process CDAxP
        if rising_edge(ClkAxCI) then
            SigInt0xS <= SigAIntxS;
        end if;
    end process CDAxP;

    CDBxP : process (ClkBxCI) is
    begin  -- process CDBxP
        if rising_edge(ClkBxCI) then
            SigInt1xS <= SigInt0xS;
            SigBIntxS <= SigInt1xS;
        end if;
    end process CDBxP;

end arch;
