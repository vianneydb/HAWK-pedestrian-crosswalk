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
    output YL, RL, W, DNW,
    output [3:0] present_state
);

    wire clr_count, inc_count;
    wire [3:0] count;
    wire [3:0] next_state;

HAWK_controller C1(.clk(clk),
    .YP(YP),
    .NS(NS),
    .count(count),
    .reset(reset),
    .YL(YL),
    .RL(RL),
    .W(W),
    .DNW(DNW),
    .clr_count(clr_count),
    .inc_count(inc_count),
    .present_state(present_state),
    .next_state(next_state)
);

HAWK_datapath D1(.clk(clk), .clr_count(clr_count), .inc_count(inc_count), .count(count));

endmodule 