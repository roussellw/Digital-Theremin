# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir P:/18summer/engs031/G18/final_31/final_31.cache/wt [current_project]
set_property parent.project_path P:/18summer/engs031/G18/final_31/final_31.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo p:/18summer/engs031/G18/final_31/final_31.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  //thayerfs.thayer.dartmouth.edu/home/Desktop/Lab5_files/mux7seg.vhd
  P:/18summer/engs031/G18/final_31/final_31.srcs/sources_1/new/instrument_shell_Version_2.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc //thayerfs.thayer.dartmouth.edu/home/Desktop/Lab6.xdc
set_property used_in_implementation false [get_files //thayerfs.thayer.dartmouth.edu/home/Desktop/Lab6.xdc]


synth_design -top instrument_shell -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef instrument_shell.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file instrument_shell_utilization_synth.rpt -pb instrument_shell_utilization_synth.pb"
