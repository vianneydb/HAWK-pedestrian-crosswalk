`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: The University of Texas at El Paso
// Engineer: Vianney Diaz
// 
// Create Date: 11/19/2025 10:39:38 AM
// Design Name: 
// Module Name: HAWK_main
//////////////////////////////////////////////////////////////////////////////////


module HAWK_main(
    input clk, YP, NS, reset,
    output YL, RL, W, DNW, clr_count, inc_count,
    output [3:0] present_state, next_state
    );
    
    wire count;
    
    HAWK_controller C1(clk, YP, NS, count, reset, YL, RL, W, DNW, clr_count, inc_count, present_state, next_state);
    HAWK_datapath D1(clk, clr_count, inc_count, count);
    
endmodule