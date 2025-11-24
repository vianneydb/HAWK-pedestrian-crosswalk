`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: The University of Texas at El Paso
// Engineer: Vianney Diaz
// 
// Create Date: 11/19/2025 11:00:29 AM
// Design Name: 
// Module Name: HAWK_testbench
//////////////////////////////////////////////////////////////////////////////////


module HAWK_testbench;
reg clk;
reg YP;
reg NS;
reg reset;

wire YL, RL, W, DNW, clr_count, inc_count;
wire [3:0] present_state, next_state;

HAWK_main uut (
        .clk(clk),
        .YP(YP),
        .NS(NS),
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
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        YP = 0; NS = 0; reset = 1;
        #20 
        
        reset = 0;
        #100;
       
        YP = 1;
        #50;
        
        YP = 0;
        #200;

        NS = 1;
        #400;
    end

endmodule
