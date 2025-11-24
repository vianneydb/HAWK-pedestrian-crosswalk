#Bitstream failed
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

#LEDs
# 0 to 3
set_property PACKAGE_PIN U16 [get_ports YL]					
	set_property IOSTANDARD LVCMOS33 [get_ports YL]
set_property PACKAGE_PIN E19 [get_ports RL]					
	set_property IOSTANDARD LVCMOS33 [get_ports RL]
set_property PACKAGE_PIN U19 [get_ports DNW]					
	set_property IOSTANDARD LVCMOS33 [get_ports DNW]
set_property PACKAGE_PIN V19 [get_ports W]					
	set_property IOSTANDARD LVCMOS33 [get_ports W]
# 12 to 15	
set_property PACKAGE_PIN P3 [get_ports present_state[0]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[0]]
set_property PACKAGE_PIN N3 [get_ports present_state[1]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[1]]
set_property PACKAGE_PIN P1 [get_ports present_state[2]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[2]]
set_property PACKAGE_PIN L1 [get_ports present_state[3]]					
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[3]]
	
# Switches
set_property PACKAGE_PIN V17 [get_ports YP]					
	set_property IOSTANDARD LVCMOS33 [get_ports YP]
set_property PACKAGE_PIN V16 [get_ports NS]					
	set_property IOSTANDARD LVCMOS33 [get_ports NS]

#Buttons
set_property PACKAGE_PIN U18 [get_ports clk]						
	set_property IOSTANDARD LVCMOS33 [get_ports clk]