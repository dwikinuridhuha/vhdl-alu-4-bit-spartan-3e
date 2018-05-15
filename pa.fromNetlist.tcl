
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ALU -dir "D:/xilin/ALU/planAhead_run_2" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/xilin/ALU/alu.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/xilin/ALU} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "alu.ucf" [current_fileset -constrset]
add_files [list {alu.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
