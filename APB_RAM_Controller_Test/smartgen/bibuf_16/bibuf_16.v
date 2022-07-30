`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module bibuf_16(
       Data,
       Y,
       Trien,
       PAD
    );
input  [15:0] Data;
output [15:0] Y;
input  Trien;
inout  [15:0] PAD;

    wire TrienAux;
    
    INV Inv_Tri (.A(Trien), .Y(TrienAux));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[4]  (.PAD(PAD[4]), .D(Data[4]), 
        .E(TrienAux), .Y(Y[4]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[13]  (.PAD(PAD[13]), .D(Data[13]), 
        .E(TrienAux), .Y(Y[13]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[3]  (.PAD(PAD[3]), .D(Data[3]), 
        .E(TrienAux), .Y(Y[3]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[0]  (.PAD(PAD[0]), .D(Data[0]), 
        .E(TrienAux), .Y(Y[0]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[12]  (.PAD(PAD[12]), .D(Data[12]), 
        .E(TrienAux), .Y(Y[12]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[8]  (.PAD(PAD[8]), .D(Data[8]), 
        .E(TrienAux), .Y(Y[8]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[15]  (.PAD(PAD[15]), .D(Data[15]), 
        .E(TrienAux), .Y(Y[15]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[6]  (.PAD(PAD[6]), .D(Data[6]), 
        .E(TrienAux), .Y(Y[6]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[9]  (.PAD(PAD[9]), .D(Data[9]), 
        .E(TrienAux), .Y(Y[9]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[10]  (.PAD(PAD[10]), .D(Data[10]), 
        .E(TrienAux), .Y(Y[10]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[1]  (.PAD(PAD[1]), .D(Data[1]), 
        .E(TrienAux), .Y(Y[1]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[14]  (.PAD(PAD[14]), .D(Data[14]), 
        .E(TrienAux), .Y(Y[14]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[2]  (.PAD(PAD[2]), .D(Data[2]), 
        .E(TrienAux), .Y(Y[2]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[5]  (.PAD(PAD[5]), .D(Data[5]), 
        .E(TrienAux), .Y(Y[5]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[11]  (.PAD(PAD[11]), .D(Data[11]), 
        .E(TrienAux), .Y(Y[11]));
    BIBUF_LVCMOS33U \BIBUF_LVCMOS33U[7]  (.PAD(PAD[7]), .D(Data[7]), 
        .E(TrienAux), .Y(Y[7]));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.0.4
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_IO_BIBUF
// LPM_HINT:BIBUF_PU
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:C:/Users/micha/SynologyDrive/Engineering/Projects/CHESS OBC/SoC/LiberoProjects/APB_RAM_Controller_Test/smartgen\bibuf_16
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS4X2M1
// SMARTGEN_PACKAGE:tq144
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WIDTH:16
// TYPE:LVCMOS33U
// TRIEN_POLARITY:0
// CLR_POLARITY:0

// _End_Comments_

