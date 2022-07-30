// Generator : SpinalHDL v1.7.0b    git head : 541894e01cf6b5ef03f924225e4f769fb167dea8
// Component : Clyde_Memory_Controller
// Git hash  : 23f8152f1f76822abe6de05999e6f5a903223b02

`timescale 1ns/1ps

module Clyde_Memory_Controller (
  input      [15:0]   io_apb_PADDR,
  input      [0:0]    io_apb_PSEL,
  input               io_apb_PENABLE,
  output              io_apb_PREADY,
  input               io_apb_PWRITE,
  input      [15:0]   io_apb_PWDATA,
  output reg [15:0]   io_apb_PRDATA,
  output              io_apb_PSLVERROR,
  input      [15:0]   io_data_read,
  output     [15:0]   io_data_write,
  output              io_data_writeEnable,
  output     [15:0]   io_address,
  output              io_we,
  output              io_ce,
  output              io_oe,
  output              io_lb,
  output              io_ub,
  input               clk,
  input               reset
);

  wire       [0:0]    output_control;
  reg                 start_read_reg;
  reg                 start_write_reg;
  reg        [15:0]   read_data;
  wire                ctrl_askWrite;
  wire                ctrl_askRead;
  wire                ctrl_doWrite;
  wire                ctrl_doRead;
  reg        [15:0]   io_address_driver;
  reg        [0:0]    output_control_driver;
  reg                 logic_we_reg;
  reg                 logic_ce_reg;
  reg                 logic_oe_reg;
  reg                 logic_lb_reg;
  reg                 logic_ub_reg;
  reg        [4:0]    logic_control_signal_control_reg;
  wire                when_Clyde_Memory_Controller_l71;
  wire                when_Clyde_Memory_Controller_l80;
  wire                when_Clyde_Memory_Controller_l85;
  wire                when_Clyde_Memory_Controller_l90;
  wire                when_Clyde_Memory_Controller_l95;
  wire                when_Clyde_Memory_Controller_l102;

  assign io_apb_PREADY = 1'b1;
  always @(*) begin
    io_apb_PRDATA = 16'h0;
    case(io_apb_PADDR)
      16'h0 : begin
        io_apb_PRDATA[15 : 0] = io_address_driver;
      end
      16'h000c : begin
        io_apb_PRDATA[0 : 0] = output_control_driver;
      end
      default : begin
      end
    endcase
  end

  assign io_apb_PSLVERROR = 1'b0;
  assign ctrl_askWrite = ((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PWRITE);
  assign ctrl_askRead = ((io_apb_PSEL[0] && io_apb_PENABLE) && (! io_apb_PWRITE));
  assign ctrl_doWrite = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && io_apb_PWRITE);
  assign ctrl_doRead = (((io_apb_PSEL[0] && io_apb_PENABLE) && io_apb_PREADY) && (! io_apb_PWRITE));
  assign io_address = io_address_driver;
  assign output_control = output_control_driver;
  assign io_data_write = read_data;
  assign when_Clyde_Memory_Controller_l71 = (logic_control_signal_control_reg == 5'h0);
  assign when_Clyde_Memory_Controller_l80 = (logic_control_signal_control_reg == 5'h01);
  assign when_Clyde_Memory_Controller_l85 = (logic_control_signal_control_reg == 5'h02);
  assign when_Clyde_Memory_Controller_l90 = (logic_control_signal_control_reg == 5'h03);
  assign when_Clyde_Memory_Controller_l95 = (logic_control_signal_control_reg == 5'h04);
  assign when_Clyde_Memory_Controller_l102 = (logic_control_signal_control_reg == 5'h05);
  assign io_ce = logic_ce_reg;
  assign io_oe = logic_oe_reg;
  assign io_we = logic_we_reg;
  assign io_ub = logic_ub_reg;
  assign io_lb = logic_lb_reg;
  assign io_data_writeEnable = output_control[0];
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      read_data <= 16'h0;
      logic_we_reg <= 1'b1;
      logic_ce_reg <= 1'b1;
      logic_oe_reg <= 1'b1;
      logic_lb_reg <= 1'b1;
      logic_ub_reg <= 1'b1;
      logic_control_signal_control_reg <= 5'h0;
    end else begin
      if(start_read_reg) begin
        if(when_Clyde_Memory_Controller_l71) begin
          logic_ce_reg <= 1'b1;
          logic_oe_reg <= 1'b1;
          logic_we_reg <= 1'b1;
          logic_ub_reg <= 1'b1;
          logic_lb_reg <= 1'b1;
          logic_control_signal_control_reg <= 5'h01;
        end else begin
          if(when_Clyde_Memory_Controller_l80) begin
            logic_ce_reg <= 1'b0;
            logic_control_signal_control_reg <= 5'h02;
          end else begin
            if(when_Clyde_Memory_Controller_l85) begin
              logic_oe_reg <= 1'b0;
              logic_control_signal_control_reg <= 5'h03;
            end else begin
              if(when_Clyde_Memory_Controller_l90) begin
                read_data <= io_data_read;
                logic_control_signal_control_reg <= 5'h04;
              end else begin
                if(when_Clyde_Memory_Controller_l95) begin
                  logic_oe_reg <= 1'b1;
                  logic_ce_reg <= 1'b1;
                  logic_control_signal_control_reg <= 5'h05;
                end else begin
                  if(when_Clyde_Memory_Controller_l102) begin
                    logic_control_signal_control_reg <= 5'h0;
                  end else begin
                    logic_control_signal_control_reg <= 5'h0;
                  end
                end
              end
            end
          end
        end
      end
      case(io_apb_PADDR)
        16'h0004 : begin
          if(ctrl_doWrite) begin
            read_data <= io_apb_PWDATA[15 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    if(start_read_reg) begin
      if(!when_Clyde_Memory_Controller_l71) begin
        if(!when_Clyde_Memory_Controller_l80) begin
          if(!when_Clyde_Memory_Controller_l85) begin
            if(!when_Clyde_Memory_Controller_l90) begin
              if(when_Clyde_Memory_Controller_l95) begin
                start_read_reg <= 1'b0;
              end
            end
          end
        end
      end
    end
    case(io_apb_PADDR)
      16'h0 : begin
        if(ctrl_doWrite) begin
          io_address_driver <= io_apb_PWDATA[15 : 0];
        end
      end
      16'h0010 : begin
        if(ctrl_doWrite) begin
          start_read_reg <= io_apb_PWDATA[0];
        end
      end
      16'h000c : begin
        if(ctrl_doWrite) begin
          output_control_driver <= io_apb_PWDATA[0 : 0];
        end
      end
      default : begin
      end
    endcase
  end


endmodule
