# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/VLSI/Desktop/smily/smily/smily.cache/wt [current_project]
set_property parent.project_path C:/Users/VLSI/Desktop/smily/smily/smily.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib C:/Users/VLSI/Desktop/smily/smily/smily.srcs/sources_1/new/face.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/VLSI/Desktop/smily/smily/smily.srcs/constrs_1/new/pins.xdc
set_property used_in_implementation false [get_files C:/Users/VLSI/Desktop/smily/smily/smily.srcs/constrs_1/new/pins.xdc]


synth_design -top face -part xc7a100tcsg324-1


write_checkpoint -force -noxdef face.dcp

catch { report_utilization -file face_utilization_synth.rpt -pb face_utilization_synth.pb }
