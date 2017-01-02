#!/bin/sh
#
# This file was automatically generated.
#
# It can be overwritten by nios2-flash-programmer-generate or nios2-flash-programmer-gui.
#

#
# Converting SOF File: D:\UBC_2017_Courses\GeneralStochastics\Cyclone_V_GX\C5G_LPDDR2_Nios_Test_uart\software\sd_card_test\C5G_LPDDR2_Nios_Test.sof to: "..\flash/C5G_LPDDR2_Nios_Test_epcs.flash"
#
sof2flash --input="D:/UBC_2017_Courses/GeneralStochastics/Cyclone_V_GX/C5G_LPDDR2_Nios_Test_uart/software/sd_card_test/C5G_LPDDR2_Nios_Test.sof" --output="../flash/C5G_LPDDR2_Nios_Test_epcs.flash" --epcs --verbose --epcq 

#
# Programming File: "..\flash/C5G_LPDDR2_Nios_Test_epcs.flash" To Device: epcs
#
nios2-flash-programmer "../flash/C5G_LPDDR2_Nios_Test_epcs.flash" --base=0x40141000 --epcs --sidp=0x401420A8 --id=0x0 --timestamp=1483316685 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 

#
# Converting ELF File: D:\UBC_2017_Courses\GeneralStochastics\Cyclone_V_GX\C5G_LPDDR2_Nios_Test_uart\software\sd_card_test\sd_card_test.elf to: "..\flash/sd_card_test_epcs.flash"
#
elf2flash --input="D:/UBC_2017_Courses/GeneralStochastics/Cyclone_V_GX/C5G_LPDDR2_Nios_Test_uart/software/sd_card_test/sd_card_test.elf" --output="../flash/sd_card_test_epcs.flash" --epcs --after="../flash/C5G_LPDDR2_Nios_Test_epcs.flash" --verbose 

#
# Programming File: "..\flash/sd_card_test_epcs.flash" To Device: epcs
#
nios2-flash-programmer "../flash/sd_card_test_epcs.flash" --base=0x40141000 --epcs --sidp=0x401420A8 --id=0x0 --timestamp=1483316685 --device=1 --instance=0 '--cable=USB-Blaster on localhost [USB-0]' --program --verbose 

