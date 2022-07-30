//--------------------------------------------------------------------
// Created by Microsemi SmartDesign Sat Jul 30 20:24:51 2022
// Parameters for COREABC
//--------------------------------------------------------------------


parameter ABCCODE = "// explenation: 
// APWBWRT [DAT or ACC] [Slot = 0 for this example] [register as indicated in the bus factory] [data to write if DAT was indicated] 

APBWRT DAT 0 0x00 0x55
APBWRT DAT 0 0x04 0x04
APBWRT DAT 0 0x0C 0x0C
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
NOP
APBWRT DAT 0 0x10 0x01
HALT";
parameter ACT_CALIBRATIONDATA = 1;
parameter APB_AWIDTH = 12;
parameter APB_DWIDTH = 16;
parameter APB_SDEPTH = 2;
parameter CODEHEXDUMP = "";
parameter CODEHEXDUMP2 = "";
parameter DEBUG = 1;
parameter EN_ACM = 0;
parameter EN_ADD = 1;
parameter EN_ALURAM = 0;
parameter EN_AND = 1;
parameter EN_CALL = 1;
parameter EN_DATAM = 2;
parameter EN_INC = 1;
parameter EN_INDIRECT = 0;
parameter EN_INT = 0;
parameter EN_IOREAD = 1;
parameter EN_IOWRT = 1;
parameter EN_MULT = 0;
parameter EN_OR = 1;
parameter EN_PUSH = 1;
parameter EN_RAM = 1;
parameter EN_RAM_ECC = 0;
parameter EN_SHL = 1;
parameter EN_SHR = 1;
parameter EN_XOR = 1;
parameter FAMILY = 15;
parameter HDL_license = "U";
parameter ICWIDTH = 10;
parameter IFWIDTH = 0;
parameter IIWIDTH = 1;
parameter IMEM_APB_ACCESS = 0;
parameter INITWIDTH = 11;
parameter INSMODE = 0;
parameter IOWIDTH = 1;
parameter ISRADDR = 1;
parameter MAX_NVMDWIDTH = 32;
parameter STWIDTH = 8;
parameter TESTBENCH = "User";
parameter TESTMODE = 0;
parameter UNIQ_STRING = "Test_Process_COREABC_0";
parameter UNIQ_STRING_LENGTH = 22;
parameter VERILOGCODE = "";
parameter VERILOGVARS = "";
parameter VHDLCODE = "";
parameter VHDLVARS = "";
parameter ZRWIDTH = 0;
