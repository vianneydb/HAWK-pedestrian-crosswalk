`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: The University of Texas at El Paso
// Engineer: Vianney Diaz
// 
// Create Date: 11/19/2025 10:35:33 AM
// Design Name: 
// Module Name: HAWK_datapath
//////////////////////////////////////////////////////////////////////////////////


module HAWK_datapath(
    input clk, clr_count, inc_count,
    output reg [3:0] count
    );
    
    always @(posedge clk) begin
        if (clr_count)
            count <= 0;
        else if (inc_count)
        count <= count + 1;
    end
    
endmodule
