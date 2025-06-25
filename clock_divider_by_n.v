`timescale 1ns / 1ps

module n_clk(
    input clk,
    input [31:0] n,
    output reg n_clk = 0
    );
    
    reg [31:0] count = 0;
    
    always @(posedge clk)
    begin
    
    if(count == n - 1)
    begin
    count <= 0;
    n_clk <= ~ n_clk;
    end    
    
    
    else 
    begin
    count <= count + 1;
    end
    end
    
    
endmodule 
