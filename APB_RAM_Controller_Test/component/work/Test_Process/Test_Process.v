//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Jul 30 20:24:51 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Test_Process
module Test_Process(
    // Inputs
    NSYSRESET,
    PCLK,
    // Outputs
    io_address_0,
    io_ce,
    io_data_write,
    io_data_writeEnable,
    io_lb,
    io_oe,
    io_ub,
    io_we,
    // Inouts
    DATA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         NSYSRESET;
input         PCLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [15:0] io_address_0;
output        io_ce;
output [15:0] io_data_write;
output        io_data_writeEnable;
output        io_lb;
output        io_oe;
output        io_ub;
output        io_we;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0] DATA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [15:0]  bibuf_16_0_Y;
wire   [15:0]  Clyde_Memory_Controller_0_io_apb_PRDATA;
wire           Clyde_Memory_Controller_0_io_apb_PREADY;
wire           Clyde_Memory_Controller_0_io_apb_PSLVERROR;
wire           COREABC_0_APB3master_PENABLE;
wire           COREABC_0_APB3master_PREADY;
wire           COREABC_0_APB3master_PSELx;
wire           COREABC_0_APB3master_PSLVERR;
wire           COREABC_0_APB3master_PWRITE;
wire   [15:0]  CoreAPB3_0_PADDRS15to0;
wire           CoreAPB3_0_PENABLES;
wire           CoreAPB3_0_PSELS0;
wire   [15:0]  CoreAPB3_0_PWDATAS15to0;
wire           CoreAPB3_0_PWRITES;
wire   [15:0]  DATA;
wire   [15:0]  io_address_0_net_0;
wire           io_ce_net_0;
wire   [15:0]  io_data_write_1;
wire           io_data_writeEnable_net_0;
wire           io_lb_net_0;
wire           io_oe_net_0;
wire           io_ub_net_0;
wire           io_we_net_0;
wire           NSYSRESET;
wire           PCLK;
wire           io_data_writeEnable_net_1;
wire           io_we_net_1;
wire           io_ce_net_1;
wire           io_ub_net_1;
wire           io_lb_net_1;
wire           io_oe_net_1;
wire   [15:0]  io_address_0_net_1;
wire   [15:0]  io_data_write_1_net_0;
wire   [31:16] PADDRS_slice_0;
wire   [31:16] PWDATAS_slice_0;
wire   [31:0]  PRDATAS0_net_0;
wire   [31:0]  PADDRS_net_0;
wire   [31:0]  PWDATAS_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire           VCC_net;
wire           GND_net;
wire   [10:0]  INITADDR_const_net_0;
wire   [8:0]   INITDATA_const_net_0;
wire   [11:0]  PADDR_S_const_net_0;
wire   [15:0]  PWDATA_S_const_net_0;
wire   [31:0]  IADDR_const_net_0;
wire   [31:0]  PRDATAS1_const_net_0;
wire   [31:0]  PRDATAS2_const_net_0;
wire   [31:0]  PRDATAS3_const_net_0;
wire   [31:0]  PRDATAS4_const_net_0;
wire   [31:0]  PRDATAS5_const_net_0;
wire   [31:0]  PRDATAS6_const_net_0;
wire   [31:0]  PRDATAS7_const_net_0;
wire   [31:0]  PRDATAS8_const_net_0;
wire   [31:0]  PRDATAS9_const_net_0;
wire   [31:0]  PRDATAS10_const_net_0;
wire   [31:0]  PRDATAS11_const_net_0;
wire   [31:0]  PRDATAS12_const_net_0;
wire   [31:0]  PRDATAS13_const_net_0;
wire   [31:0]  PRDATAS14_const_net_0;
wire   [31:0]  PRDATAS15_const_net_0;
wire   [31:0]  PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire           reset_IN_POST_INV0_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [19:0]  COREABC_0_APB3master_PADDR;
wire   [31:20] COREABC_0_APB3master_PADDR_0_31to20;
wire   [19:0]  COREABC_0_APB3master_PADDR_0_19to0;
wire   [31:0]  COREABC_0_APB3master_PADDR_0;
wire   [15:0]  COREABC_0_APB3master_PRDATA_0_15to0;
wire   [15:0]  COREABC_0_APB3master_PRDATA_0;
wire   [31:0]  COREABC_0_APB3master_PRDATA;
wire   [15:0]  COREABC_0_APB3master_PWDATA;
wire   [31:16] COREABC_0_APB3master_PWDATA_0_31to16;
wire   [15:0]  COREABC_0_APB3master_PWDATA_0_15to0;
wire   [31:0]  COREABC_0_APB3master_PWDATA_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net               = 1'b1;
assign GND_net               = 1'b0;
assign INITADDR_const_net_0  = 11'h000;
assign INITDATA_const_net_0  = 9'h000;
assign PADDR_S_const_net_0   = 12'h000;
assign PWDATA_S_const_net_0  = 16'h0000;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS1_const_net_0  = 32'h00000000;
assign PRDATAS2_const_net_0  = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS5_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign reset_IN_POST_INV0_0 = ~ NSYSRESET;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign io_data_writeEnable_net_1 = io_data_writeEnable_net_0;
assign io_data_writeEnable       = io_data_writeEnable_net_1;
assign io_we_net_1               = io_we_net_0;
assign io_we                     = io_we_net_1;
assign io_ce_net_1               = io_ce_net_0;
assign io_ce                     = io_ce_net_1;
assign io_ub_net_1               = io_ub_net_0;
assign io_ub                     = io_ub_net_1;
assign io_lb_net_1               = io_lb_net_0;
assign io_lb                     = io_lb_net_1;
assign io_oe_net_1               = io_oe_net_0;
assign io_oe                     = io_oe_net_1;
assign io_address_0_net_1        = io_address_0_net_0;
assign io_address_0[15:0]        = io_address_0_net_1;
assign io_data_write_1_net_0     = io_data_write_1;
assign io_data_write[15:0]       = io_data_write_1_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign CoreAPB3_0_PADDRS15to0  = PADDRS_net_0[15:0];
assign CoreAPB3_0_PWDATAS15to0 = PWDATAS_net_0[15:0];
assign PADDRS_slice_0          = PADDRS_net_0[31:16];
assign PWDATAS_slice_0         = PWDATAS_net_0[31:16];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign PRDATAS0_net_0 = { 16'h0000 , Clyde_Memory_Controller_0_io_apb_PRDATA };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign COREABC_0_APB3master_PADDR_0_31to20 = 12'h0;
assign COREABC_0_APB3master_PADDR_0_19to0 = COREABC_0_APB3master_PADDR[19:0];
assign COREABC_0_APB3master_PADDR_0 = { COREABC_0_APB3master_PADDR_0_31to20, COREABC_0_APB3master_PADDR_0_19to0 };

assign COREABC_0_APB3master_PRDATA_0_15to0 = COREABC_0_APB3master_PRDATA[15:0];
assign COREABC_0_APB3master_PRDATA_0 = { COREABC_0_APB3master_PRDATA_0_15to0 };

assign COREABC_0_APB3master_PWDATA_0_31to16 = 16'h0;
assign COREABC_0_APB3master_PWDATA_0_15to0 = COREABC_0_APB3master_PWDATA[15:0];
assign COREABC_0_APB3master_PWDATA_0 = { COREABC_0_APB3master_PWDATA_0_31to16, COREABC_0_APB3master_PWDATA_0_15to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------bibuf_16
bibuf_16 bibuf_16_0(
        // Inputs
        .Trien ( io_we_net_0 ),
        .Data  ( io_data_write_1 ),
        // Outputs
        .Y     ( bibuf_16_0_Y ),
        // Inouts
        .PAD   ( DATA ) 
        );

//--------Clyde_Memory_Controller
Clyde_Memory_Controller Clyde_Memory_Controller_0(
        // Inputs
        .io_apb_PENABLE      ( CoreAPB3_0_PENABLES ),
        .io_apb_PWRITE       ( CoreAPB3_0_PWRITES ),
        .clk                 ( PCLK ),
        .reset               ( reset_IN_POST_INV0_0 ),
        .io_apb_PADDR        ( CoreAPB3_0_PADDRS15to0 ),
        .io_apb_PSEL         ( CoreAPB3_0_PSELS0 ),
        .io_apb_PWDATA       ( CoreAPB3_0_PWDATAS15to0 ),
        .io_data_read        ( bibuf_16_0_Y ),
        // Outputs
        .io_apb_PREADY       ( Clyde_Memory_Controller_0_io_apb_PREADY ),
        .io_apb_PSLVERROR    ( Clyde_Memory_Controller_0_io_apb_PSLVERROR ),
        .io_data_writeEnable ( io_data_writeEnable_net_0 ),
        .io_we               ( io_we_net_0 ),
        .io_ce               ( io_ce_net_0 ),
        .io_oe               ( io_oe_net_0 ),
        .io_lb               ( io_lb_net_0 ),
        .io_ub               ( io_ub_net_0 ),
        .io_apb_PRDATA       ( Clyde_Memory_Controller_0_io_apb_PRDATA ),
        .io_data_write       ( io_data_write_1 ),
        .io_address          ( io_address_0_net_0 ) 
        );

//--------Test_Process_COREABC_0_COREABC   -   Actel:DirectCore:COREABC:3.8.102
Test_Process_COREABC_0_COREABC #( 
        .ACT_CALIBRATIONDATA ( 1 ),
        .APB_AWIDTH          ( 12 ),
        .APB_DWIDTH          ( 16 ),
        .APB_SDEPTH          ( 2 ),
        .DEBUG               ( 1 ),
        .EN_ACM              ( 0 ),
        .EN_ADD              ( 1 ),
        .EN_ALURAM           ( 0 ),
        .EN_AND              ( 1 ),
        .EN_CALL             ( 1 ),
        .EN_DATAM            ( 2 ),
        .EN_INC              ( 1 ),
        .EN_INDIRECT         ( 0 ),
        .EN_INT              ( 0 ),
        .EN_IOREAD           ( 1 ),
        .EN_IOWRT            ( 1 ),
        .EN_MULT             ( 0 ),
        .EN_OR               ( 1 ),
        .EN_PUSH             ( 1 ),
        .EN_RAM              ( 1 ),
        .EN_RAM_ECC          ( 0 ),
        .EN_SHL              ( 1 ),
        .EN_SHR              ( 1 ),
        .EN_XOR              ( 1 ),
        .FAMILY              ( 15 ),
        .ICWIDTH             ( 10 ),
        .IFWIDTH             ( 0 ),
        .IIWIDTH             ( 1 ),
        .IMEM_APB_ACCESS     ( 0 ),
        .INITWIDTH           ( 11 ),
        .INSMODE             ( 0 ),
        .IOWIDTH             ( 1 ),
        .ISRADDR             ( 1 ),
        .MAX_NVMDWIDTH       ( 32 ),
        .STWIDTH             ( 8 ),
        .TESTMODE            ( 0 ),
        .UNIQ_STRING_LENGTH  ( 22 ),
        .ZRWIDTH             ( 0 ) )
COREABC_0(
        // Inputs
        .INITDATVAL ( GND_net ), // tied to 1'b0 from definition
        .INITDONE   ( VCC_net ), // tied to 1'b1 from definition
        .INTREQ     ( GND_net ), // tied to 1'b0 from definition
        .NSYSRESET  ( NSYSRESET ),
        .PCLK       ( PCLK ),
        .PREADY_M   ( COREABC_0_APB3master_PREADY ),
        .PSLVERR_M  ( COREABC_0_APB3master_PSLVERR ),
        .PSEL_S     ( GND_net ), // tied to 1'b0 from definition
        .PENABLE_S  ( GND_net ), // tied to 1'b0 from definition
        .PWRITE_S   ( GND_net ), // tied to 1'b0 from definition
        .INITADDR   ( INITADDR_const_net_0 ), // tied to 11'h000 from definition
        .INITDATA   ( INITDATA_const_net_0 ), // tied to 9'h000 from definition
        .IO_IN      ( VCC_net ),
        .PRDATA_M   ( COREABC_0_APB3master_PRDATA_0 ),
        .PADDR_S    ( PADDR_S_const_net_0 ), // tied to 12'h000 from definition
        .PWDATA_S   ( PWDATA_S_const_net_0 ), // tied to 16'h0000 from definition
        // Outputs
        .INTACT     (  ),
        .PRESETN    (  ),
        .PENABLE_M  ( COREABC_0_APB3master_PENABLE ),
        .PSEL_M     ( COREABC_0_APB3master_PSELx ),
        .PWRITE_M   ( COREABC_0_APB3master_PWRITE ),
        .PREADY_S   (  ),
        .PSLVERR_S  (  ),
        .IO_OUT     (  ),
        .PADDR_M    ( COREABC_0_APB3master_PADDR ),
        .PWDATA_M   ( COREABC_0_APB3master_PWDATA ),
        .PRDATA_S   (  ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.2.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 16 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 0 ),
        .APBSLOT2ENABLE  ( 0 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 15 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 16 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 3 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( COREABC_0_APB3master_PWRITE ),
        .PENABLE    ( COREABC_0_APB3master_PENABLE ),
        .PSEL       ( COREABC_0_APB3master_PSELx ),
        .PREADYS0   ( Clyde_Memory_Controller_0_io_apb_PREADY ),
        .PSLVERRS0  ( Clyde_Memory_Controller_0_io_apb_PSLVERROR ),
        .PREADYS1   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS1  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS2   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS2  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( COREABC_0_APB3master_PADDR_0 ),
        .PWDATA     ( COREABC_0_APB3master_PWDATA_0 ),
        .PRDATAS0   ( PRDATAS0_net_0 ),
        .PRDATAS1   ( PRDATAS1_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS2   ( PRDATAS2_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( COREABC_0_APB3master_PREADY ),
        .PSLVERR    ( COREABC_0_APB3master_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_PWRITES ),
        .PENABLES   ( CoreAPB3_0_PENABLES ),
        .PSELS0     ( CoreAPB3_0_PSELS0 ),
        .PSELS1     (  ),
        .PSELS2     (  ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( COREABC_0_APB3master_PRDATA ),
        .PADDRS     ( PADDRS_net_0 ),
        .PWDATAS    ( PWDATAS_net_0 ) 
        );


endmodule
