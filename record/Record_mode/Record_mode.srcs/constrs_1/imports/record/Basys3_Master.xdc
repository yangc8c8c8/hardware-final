# Clock signal
#Bank = 34, Pin name = ,					Sch name = CLK100MHZ
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Switches
set_property PACKAGE_PIN V17 [get_ports {Begin}]
set_property IOSTANDARD LVCMOS33 [get_ports {Begin}]
set_property PACKAGE_PIN R2 [get_ports {Play}]
set_property IOSTANDARD LVCMOS33 [get_ports {Play}]

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










