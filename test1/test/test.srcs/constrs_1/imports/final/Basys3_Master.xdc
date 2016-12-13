# Clock signal
#Bank = 34, Pin name = ,					Sch name = CLK100MHZ
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Switches
set_property PACKAGE_PIN V17 [get_ports {music[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {music[0]}]
set_property PACKAGE_PIN V16 [get_ports {music[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {music[1]}]
set_property PACKAGE_PIN W16 [get_ports {play}]
set_property IOSTANDARD LVCMOS33 [get_ports {play}]



#Buttons
#Bank = 14, Pin name = ,					Sch name = BTNC
set_property PACKAGE_PIN U18 [get_ports {reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset}]



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










