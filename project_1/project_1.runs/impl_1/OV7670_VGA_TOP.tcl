proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir E:/OV7670_VGA/project_1/project_1.cache/wt [current_project]
  set_property parent.project_path E:/OV7670_VGA/project_1/project_1.xpr [current_project]
  set_property ip_repo_paths e:/OV7670_VGA/project_1/project_1.cache/ip [current_project]
  set_property ip_output_repo e:/OV7670_VGA/project_1/project_1.cache/ip [current_project]
  add_files -quiet E:/OV7670_VGA/project_1/project_1.runs/synth_1/OV7670_VGA_TOP.dcp
  read_xdc -prop_thru_buffers -ref CLK_clk_wiz_0_0 -cells inst e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0_board.xdc]
  read_xdc -ref CLK_clk_wiz_0_0 -cells inst e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files e:/OV7670_VGA/project_1/project_1.srcs/sources_1/bd/CLK/ip/CLK_clk_wiz_0_0/CLK_clk_wiz_0_0.xdc]
  read_xdc E:/OV7670_VGA/project_1/project_1.srcs/constrs_1/new/pinset.xdc
  link_design -top OV7670_VGA_TOP -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force OV7670_VGA_TOP_opt.dcp
  report_drc -file OV7670_VGA_TOP_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file OV7670_VGA_TOP.hwdef}
  place_design 
  write_checkpoint -force OV7670_VGA_TOP_placed.dcp
  report_io -file OV7670_VGA_TOP_io_placed.rpt
  report_utilization -file OV7670_VGA_TOP_utilization_placed.rpt -pb OV7670_VGA_TOP_utilization_placed.pb
  report_control_sets -verbose -file OV7670_VGA_TOP_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force OV7670_VGA_TOP_routed.dcp
  report_drc -file OV7670_VGA_TOP_drc_routed.rpt -pb OV7670_VGA_TOP_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file OV7670_VGA_TOP_timing_summary_routed.rpt -rpx OV7670_VGA_TOP_timing_summary_routed.rpx
  report_power -file OV7670_VGA_TOP_power_routed.rpt -pb OV7670_VGA_TOP_power_summary_routed.pb
  report_route_status -file OV7670_VGA_TOP_route_status.rpt -pb OV7670_VGA_TOP_route_status.pb
  report_clock_utilization -file OV7670_VGA_TOP_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force OV7670_VGA_TOP.mmi }
  write_bitstream -force OV7670_VGA_TOP.bit 
  catch { write_sysdef -hwdef OV7670_VGA_TOP.hwdef -bitfile OV7670_VGA_TOP.bit -meminfo OV7670_VGA_TOP.mmi -file OV7670_VGA_TOP.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

