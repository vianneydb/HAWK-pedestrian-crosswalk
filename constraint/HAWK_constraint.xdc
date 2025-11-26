# Disable internal clock
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets -hier *clk*]

# LEDs traffic light LED3 to LED0
set_property PACKAGE_PIN U16 [get_ports YL]
	set_property IOSTANDARD LVCMOS33 [get_ports YL]
set_property PACKAGE_PIN E19 [get_ports RL]
	set_property IOSTANDARD LVCMOS33 [get_ports RL]
set_property PACKAGE_PIN U19 [get_ports DNW]
	set_property IOSTANDARD LVCMOS33 [get_ports DNW]
set_property PACKAGE_PIN V19 [get_ports W]
	set_property IOSTANDARD LVCMOS33 [get_ports W]

# LEDs present_state[3:0] in LED15 to LED12
set_property PACKAGE_PIN P3 [get_ports present_state[0]]
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[0]]
set_property PACKAGE_PIN N3 [get_ports present_state[1]]
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[1]]
set_property PACKAGE_PIN P1 [get_ports present_state[2]]
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[2]]
set_property PACKAGE_PIN L1 [get_ports present_state[3]]
	set_property IOSTANDARD LVCMOS33 [get_ports present_state[3]]

# Switches SW0 and SW1
set_property PACKAGE_PIN V17 [get_ports YP]
	set_property IOSTANDARD LVCMOS33 [get_ports YP]
set_property PACKAGE_PIN V16 [get_ports NS]
	set_property IOSTANDARD LVCMOS33 [get_ports NS]

# Central button (btnC) for clock
set_property PACKAGE_PIN U18 [get_ports clk]
	set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Reset button
set_property PACKAGE_PIN T18 [get_ports reset]
	set_property IOSTANDARD LVCMOS33 [get_ports reset]

# Discard configuration warnings
set_property CFGBVS VCCO [current_design]
	set_property CONFIG_VOLTAGE 3.3 [current_design]