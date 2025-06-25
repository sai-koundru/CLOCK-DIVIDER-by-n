`timescale 1ns / 1ps

module tb_clock_divider_by_n;

reg clk = 0;
 reg [31:0] n = 7;                // externally applied split value (clk / 7)

wire n_clk;

clock_divider_by_n uut (.clk(clk), .n(n), .n_clk(n_clk) );


always #5 clk = ~clk;

initial
 begin

    $display("Time\tclk\tn_clk");
    $monitor("%0t\t%b\t%b", $time, clk, n_clk);

#500;
$finish; 

end
endmodule
