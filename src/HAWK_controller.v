`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: The University of Texas at El Paso
// Engineer: Vianney Diaz
// 
// Create Date: 11/19/2025 09:34:19 AM
// Design Name: 
// Module Name: HAWK_controller
//////////////////////////////////////////////////////////////////////////////////


module HAWK_controller(
    input clk, YP, NS, reset,
    input wire [3:0] count,
    output reg YL, RL, W, DNW, clr_count, inc_count,
    output reg [3:0] present_state,
    output reg [3:0] next_state
    );
    
    parameter s0 = 4'h0,
    s1 = 4'h1,
    s2 = 4'h2,
    s3 = 4'h3,
    s4 = 4'h4,
    s5 = 4'h5,
    s6 = 4'h6,
    s7 = 4'h7,
    s8 = 4'h8,
    s9 = 4'h9,
    s10 = 4'hA,
    s11 = 4'hB,
    s12 = 4'hC,
    s13 = 4'hD;
    
    //define clk
    always @(posedge clk or posedge reset)
    if (reset)
        present_state <= s0;
    else 
        present_state <= next_state;
    
    //define next state 
    always @(*)
        case(present_state)
            s0: if (YP) next_state = s1; else next_state = s0;
            s1: next_state = s2;
            s2: next_state = s3;
            s3: next_state = s4;
            s4: next_state = s5;
            s5: next_state = s6;
            s6: next_state = s7;
            s7: next_state = s8;
            s8: if (NS) next_state = s9; else next_state = s8;
            s9: if (count) next_state = s10; else next_state = s9;
            s10: next_state = s11;
            s11: next_state = s12;
            s12: next_state = s13;
            s13: next_state = s0;
            default: next_state = s0;
        endcase
        
    always @(present_state) begin
    YL = 0; RL = 0; W = 0; DNW = 0; clr_count = 0; inc_count = 0;
    
        case (present_state)
            s0: begin
                DNW = 1;
                clr_count = 1;
            end
            s1: begin
                YL = 1;
                DNW = 1;
            end
            s2: begin
                DNW = 1;
            end
            s3: begin
                YL = 1;
                DNW = 1;
            end
            s4: begin
                DNW = 1;
            end
            s5: begin
                YL = 1;
                DNW = 1;
            end
            s6: begin
                DNW = 1;
            end
            s7: begin
                RL = 1;
                DNW = 1;
            end
            s8: begin
                RL = 1;
                W = 1;
            end
            s9: begin
                RL = 1;
                W = 1;
                inc_count = 1;
            end
            s10: begin
                RL = 1;
            end
            s11: begin
                DNW = 1;
            end
            s12: begin
                RL = 1;
            end
            s13: begin
                DNW = 1;
            end
            default: begin 
                YL = 0; RL = 0; W = 0; DNW = 0; clr_count = 0; inc_count = 0; 
            end
        endcase
    end
     
endmodule
