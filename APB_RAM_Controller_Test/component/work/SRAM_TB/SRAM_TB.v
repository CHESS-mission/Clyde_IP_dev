//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Jul 30 15:08:08 2022
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// SRAM_TB
module SRAM_TB(
    // Outputs
    io_address_0,
    io_ce,
    io_data_writeEnable,
    io_data_write_0,
    io_lb,
    io_oe,
    io_ub,
    io_we
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [15:0] io_address_0;
output        io_ce;
output        io_data_writeEnable;
output [15:0] io_data_write_0;
output        io_lb;
output        io_oe;
output        io_ub;
output        io_we;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK_GEN_0_CLK;
wire   [15:0] io_address_0_net_0;
wire          io_ce_net_0;
wire   [15:0] io_data_write_0_net_0;
wire          io_data_writeEnable_net_0;
wire          io_lb_net_0;
wire          io_oe_net_0;
wire          io_ub_net_0;
wire          io_we_net_0;
wire          RESET_GEN_0_RESET;
wire          io_data_writeEnable_net_1;
wire          io_oe_net_1;
wire          io_we_net_1;
wire          io_lb_net_1;
wire   [15:0] io_data_write_0_net_1;
wire   [15:0] io_address_0_net_1;
wire          io_ub_net_1;
wire          io_ce_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign io_data_writeEnable_net_1 = io_data_writeEnable_net_0;
assign io_data_writeEnable       = io_data_writeEnable_net_1;
assign io_oe_net_1               = io_oe_net_0;
assign io_oe                     = io_oe_net_1;
assign io_we_net_1               = io_we_net_0;
assign io_we                     = io_we_net_1;
assign io_lb_net_1               = io_lb_net_0;
assign io_lb                     = io_lb_net_1;
assign io_data_write_0_net_1     = io_data_write_0_net_0;
assign io_data_write_0[15:0]     = io_data_write_0_net_1;
assign io_address_0_net_1        = io_address_0_net_0;
assign io_address_0[15:0]        = io_address_0_net_1;
assign io_ub_net_1               = io_ub_net_0;
assign io_ub                     = io_ub_net_1;
assign io_ce_net_1               = io_ce_net_0;
assign io_ce                     = io_ce_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_GEN   -   Actel:Simulation:CLK_GEN:1.0.1
CLK_GEN #( 
        .CLK_PERIOD ( 30000 ),
        .DUTY_CYCLE ( 50 ) )
CLK_GEN_0(
        // Outputs
        .CLK ( CLK_GEN_0_CLK ) 
        );

//--------RESET_GEN   -   Actel:Simulation:RESET_GEN:1.0.1
RESET_GEN #( 
        .DELAY       ( 1000 ),
        .LOGIC_LEVEL ( 0 ) )
RESET_GEN_0(
        // Outputs
        .RESET ( RESET_GEN_0_RESET ) 
        );

//--------Test_Process
Test_Process Test_Process_0(
        // Inputs
        .NSYSRESET           ( RESET_GEN_0_RESET ),
        .PCLK                ( CLK_GEN_0_CLK ),
        // Outputs
        .io_data_writeEnable ( io_data_writeEnable_net_0 ),
        .io_data_write_0     ( io_data_write_0_net_0 ),
        .io_address_0        ( io_address_0_net_0 ),
        .io_we               ( io_we_net_0 ),
        .io_ce               ( io_ce_net_0 ),
        .io_ub               ( io_ub_net_0 ),
        .io_lb               ( io_lb_net_0 ),
        .io_oe               ( io_oe_net_0 ) 
        );


endmodule
