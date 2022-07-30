quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/Clyde_IP_dev/APB_RAM_Controller_Test"
source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"
if {[file exists COREAPB3_LIB/_info]} {
   echo "INFO: Simulation library COREAPB3_LIB already exists"
} else {
   file delete -force COREAPB3_LIB 
   vlib COREAPB3_LIB
}
vmap COREAPB3_LIB "COREAPB3_LIB"

vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/hdl/Clyde_Memory_Controller.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/acmtable.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/debugblk.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/instructions.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/instructnvm_bb.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/iram512x9_pa3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/instructram.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/ram128x8_rtl.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/ram256x16_pa3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/ram256x8_rtl.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/ramblocks.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core/coreabc.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/smartgen/bibuf_16/bibuf_16.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.2.100/rtl/vlog/core/coreapb3_muxptob3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.2.100/rtl/vlog/core/coreapb3_iaddr_reg.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.2.100/rtl/vlog/core/coreapb3.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Test_Process/Test_Process.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/Simple_TB" -vlog01compat -work presynth "${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1/CLK_GEN.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/Simple_TB" -vlog01compat -work presynth "${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1/RESET_GEN.v"
vlog "+incdir+${PROJECT_DIR}/component/work/Test_Process/COREABC_0/rtl/vlog/core" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/CLK_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/Actel/Simulation/RESET_GEN/1.0.1" "+incdir+${PROJECT_DIR}/component/work/Simple_TB" -vlog01compat -work presynth "${PROJECT_DIR}/component/work/Simple_TB/Simple_TB.v"

vsim -L proasic3 -L presynth -L COREAPB3_LIB  -t 1ps presynth.Simple_TB
add wave /Simple_TB/*
run 1ms
