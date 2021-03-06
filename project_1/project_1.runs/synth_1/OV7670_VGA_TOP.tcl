# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/OV7670_VGA/project_1/project_1.cache/wt [current_project]
set_property parent.project_path E:/OV7670_VGA/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files E:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/DPRAM/DPRAM.bd
set_property used_in_implementation false [get_files -all e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/DPRAM/ip/DPRAM_blk_mem_gen_0_0/DPRAM_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/DPRAM/DPRAM_ooc.xdc]
set_property is_locked true [get_files E:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/DPRAM/DPRAM.bd]

add_files E:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/CLK.bd
set_property used_in_implementation false [get_files -all e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all E:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/CLK_ooc.xdc]
set_property is_locked true [get_files E:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/CLK.bd]

read_verilog -library xil_defaultlib {
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/sccb_sender.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/imports/hdl/DPRAM_wrapper.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/imports/hdl/CLK_wrapper.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/cfg_regs.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/vga_dpram.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/my_vga_syn.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/debounce.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/clock_convert.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/cfg_ov.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/CAPTURE.v
  E:/OV7670_VGA/project_1/project_1.srcs/sources_1/new/OV7670_TOP.v
}
read_xdc E:/OV7670_VGA/project_1/project_1.srcs/constrs_1/new/pinset.xdc
set_property used_in_implementation false [get_files E:/OV7670_VGA/project_1/project_1.srcs/constrs_1/new/pinset.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top OV7670_VGA_TOP -part xc7z020clg484-1
write_checkpoint -noxdef OV7670_VGA_TOP.dcp
catch { report_utilization -file OV7670_VGA_TOP_utilization_synth.rpt -pb OV7670_VGA_TOP_utilization_synth.pb }
