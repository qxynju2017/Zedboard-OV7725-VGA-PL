
set_property PACKAGE_PIN  N15  [get_ports {BTN_UP}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTN_UP}]

set_property PACKAGE_PIN Y9 [get_ports {CLK100M}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK100M}]

set_property PACKAGE_PIN  Y19  [get_ports {VSYNC}]
set_property IOSTANDARD LVCMOS33 [get_ports {VSYNC}]

set_property PACKAGE_PIN  AA19  [get_ports {HSYNC}]
set_property IOSTANDARD LVCMOS33 [get_ports {HSYNC}]

set_property PACKAGE_PIN  V20   [get_ports {R[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[0]}]
set_property PACKAGE_PIN    U20 [get_ports {R[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[1]}]
set_property PACKAGE_PIN   V19  [get_ports {R[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[2]}]
set_property PACKAGE_PIN   V18  [get_ports {R[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[3]}]

set_property PACKAGE_PIN  AB22   [get_ports {G[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[0]}]
set_property PACKAGE_PIN   AA22  [get_ports {G[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[1]}]
set_property PACKAGE_PIN   AB21  [get_ports {G[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[2]}]
set_property PACKAGE_PIN   AA21  [get_ports {G[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G[3]}]

set_property PACKAGE_PIN   Y21  [get_ports {B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
set_property PACKAGE_PIN   Y20  [get_ports {B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
set_property PACKAGE_PIN   AB20  [get_ports {B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
set_property PACKAGE_PIN   AB19  [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]
 


 
 
  set_property  -dict {PACKAGE_PIN  Y11    IOSTANDARD LVCMOS33}           [get_ports OV7670_PWDN ]
  set_property  -dict {PACKAGE_PIN  AA11  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[0] ]
  set_property  -dict {PACKAGE_PIN  Y10  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[2] ]  
  set_property  -dict {PACKAGE_PIN  AA9  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[4] ] 
  
  set_property  -dict {PACKAGE_PIN  AB11  IOSTANDARD LVCMOS33}           [get_ports OV7670_RESET ]
  set_property  -dict {PACKAGE_PIN  AB10  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[1] ] 
  set_property  -dict {PACKAGE_PIN  AB9  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[3] ] 
  set_property  -dict {PACKAGE_PIN  AA8  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[5] ]  
  
  set_property  -dict {PACKAGE_PIN  W12  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[6] ]  
  set_property  -dict {PACKAGE_PIN  W11  IOSTANDARD LVCMOS33}           [get_ports OV7670_XCLK ]  
  set_property  -dict {PACKAGE_PIN  V10  IOSTANDARD LVCMOS33}           [get_ports OV7670_HREF ]  
  set_property  -dict {PACKAGE_PIN  W8   IOSTANDARD LVCMOS33}           [get_ports OV7670_SIOD ]  

  set_property PULLUP TRUE [get_ports OV7670_SIOD]
  set_property  -dict {PACKAGE_PIN  V12  IOSTANDARD LVCMOS33}           [get_ports OV7670_D[7] ]  
  set_property  -dict {PACKAGE_PIN  W10  IOSTANDARD LVCMOS33}           [get_ports OV7670_PCLK ]  
  set_property  -dict {PACKAGE_PIN  V9  IOSTANDARD LVCMOS33}           [get_ports OV7670_VSYNC ] 
  set_property  -dict {PACKAGE_PIN  V8  IOSTANDARD LVCMOS33}           [get_ports OV7670_SIOC ] 
  
  set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK_IBUF]
 
  set_property  -dict {PACKAGE_PIN  T22  IOSTANDARD LVCMOS33}           [get_ports ERROR_LED ]  
  
  
  
  
  