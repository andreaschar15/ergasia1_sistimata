## Switches (V17=SW0, V16=SW1, W16=SW2, W17=SW3)
set_property PACKAGE_PIN V17 [get_ports {SW[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]
set_property PACKAGE_PIN V16 [get_ports {SW[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]
set_property PACKAGE_PIN W16 [get_ports {SW[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]
set_property PACKAGE_PIN W17 [get_ports {SW[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]

## LED (D1 - Tens)
set_property PACKAGE_PIN U16 [get_ports {D1}]
set_property IOSTANDARD LVCMOS33 [get_ports {D1}]

## 7-Segment Display Segments (Requires 7-bit output)
set_property PACKAGE_PIN W7 [get_ports {D0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D0[0]}]
set_property PACKAGE_PIN W6 [get_ports {D0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D0[1]}]
set_property PACKAGE_PIN U8 [get_ports {D0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D0[2]}]
set_property PACKAGE_PIN V8 [get_ports {D0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D0[3]}]
set_property PACKAGE_PIN U5 [get_ports {D0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D0[4]}]
set_property PACKAGE_PIN V5 [get_ports {D0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D0[5]}]
set_property PACKAGE_PIN U7 [get_ports {D0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {D0[6]}]

## 7-Segment Anodes (To enable the digits)
set_property PACKAGE_PIN W4 [get_ports {AN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}]
set_property PACKAGE_PIN V4 [get_ports {AN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}]
set_property PACKAGE_PIN U4 [get_ports {AN[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}]
set_property PACKAGE_PIN U2 [get_ports {AN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}]
