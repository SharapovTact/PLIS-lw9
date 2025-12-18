
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name SevenSegsLibrary -dir "D:/Study/PLIS/PLIS-lw8/SevenSegsLibrary/planAhead_run_2" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Config.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Scheme.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Scheme $srcset
add_files [list {Config.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
