# Clock signal
#Bank = 34, Pin name = ,					Sch name = CLK100MHZ
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Switches
set_property PACKAGE_PIN V17 [get_ports {Begin}]
set_property IOSTANDARD LVCMOS33 [get_ports {Begin}]
set_property PACKAGE_PIN R2 [get_ports {Play}]
set_property IOSTANDARD LVCMOS33 [get_ports {Play}]

#7 segment Display
#Bank = 34, Pin name = ,						Sch name = CA
set_property PACKAGE_PIN W7 [get_ports {Display[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Display[0]}]
#Bank = 34, Pin name = ,					Sch name = CB
set_property PACKAGE_PIN W6 [get_ports {Display[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Display[1]}]
#Bank = 34, Pin name = ,					Sch name = CC
set_property PACKAGE_PIN U8 [get_ports {Display[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Display[2]}]
#Bank = 34, Pin name = ,						Sch name = CD
set_property PACKAGE_PIN V8 [get_ports {Display[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Display[3]}]
#Bank = 34, Pin name = ,						Sch name = CE
set_property PACKAGE_PIN U5 [get_ports {Display[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Display[4]}]
#Bank = 34, Pin name = ,						Sch name = CF
set_property PACKAGE_PIN V5 [get_ports {Display[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Display[5]}]
#Bank = 34, Pin name = ,						Sch name = CG
set_property PACKAGE_PIN U7 [get_ports {Display[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Display[6]}]

#Bank = 34, Pin name = ,						Sch name = AN0
set_property PACKAGE_PIN U2 [get_ports {Digit[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Digit[0]}]
#Bank = 34, Pin name = ,						Sch name = AN1
set_property PACKAGE_PIN U4 [get_ports {Digit[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Digit[1]}]
#Bank = 34, Pin name = ,						Sch name = AN2
set_property PACKAGE_PIN V4 [get_ports {Digit[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Digit[2]}]
#Bank = 34, Pin name = ,					Sch name = AN3
set_property PACKAGE_PIN W4 [get_ports {Digit[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Digit[3]}]

#Buttons
#Bank = 14, Pin name = ,					Sch name = BTNC
set_property PACKAGE_PIN U18 [get_ports {reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset}]

#USB HID (PS/2)
#Bank = 16, Pin name = ,					Sch name = PS2_CLK
set_property PACKAGE_PIN C17 [get_ports PS2_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_CLK]
set_property PULLUP true [get_ports PS2_CLK]
#Bank = 16, Pin name = ,					Sch name = PS2_DATA
set_property PACKAGE_PIN B17 [get_ports PS2_DATA]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_DATA]
set_property PULLUP true [get_ports PS2_DATA]

##Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {Pmod_JB_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {Pmod_JB_1}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {Pmod_JB_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {Pmod_JB_2}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {Pmod_JB_4}]
set_property IOSTANDARD LVCMOS33 [get_ports {Pmod_JB_4}]

##VGA Connector
set_property PACKAGE_PIN G19 [get_ports {vgaRed[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[0]}]
set_property PACKAGE_PIN H19 [get_ports {vgaRed[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[1]}]
set_property PACKAGE_PIN J19 [get_ports {vgaRed[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[2]}]
set_property PACKAGE_PIN N19 [get_ports {vgaRed[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[3]}]
set_property PACKAGE_PIN N18 [get_ports {vgaBlue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[0]}]
set_property PACKAGE_PIN L18 [get_ports {vgaBlue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[1]}]
set_property PACKAGE_PIN K18 [get_ports {vgaBlue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[2]}]
set_property PACKAGE_PIN J18 [get_ports {vgaBlue[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[3]}]
set_property PACKAGE_PIN J17 [get_ports {vgaGreen[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[0]}]
set_property PACKAGE_PIN H17 [get_ports {vgaGreen[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[1]}]
set_property PACKAGE_PIN G17 [get_ports {vgaGreen[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[2]}]
set_property PACKAGE_PIN D17 [get_ports {vgaGreen[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[3]}]
set_property PACKAGE_PIN P19 [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports hsync]
set_property PACKAGE_PIN R19 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]








