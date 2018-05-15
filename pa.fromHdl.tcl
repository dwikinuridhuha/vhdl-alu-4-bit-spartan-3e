
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ALU -dir "D:/xilin/ALU/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "alu.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {alu4bit.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top alu $srcset
add_files [list {alu.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
