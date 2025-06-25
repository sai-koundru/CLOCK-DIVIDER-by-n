`timescale 1ns / 1ps

module n_clk_tb;

reg clk = 0;
reg [31:0] n = 7;                // user defined (clk / 7)

wire n_clk;

n_clk uut (.clk(clk), .n(n), .n_clk(n_clk) );


always #5 clk = ~clk;

initial
begin

 $dumpfile("n_clk.vcd");
 $dumpvars(0, n_clk_tb);


    $display("Time\tclk\tn_clk");
    $monitor("%0t\t%b\t%b", $time, clk, n_clk);


#500;
$finish; 

end
    
endmodule




//`timescale 1ns / 1ps

//module clk_div_by_n_tb;

//reg clk = 0;
//reg [7:0] n = 4;  // user-defined divide factor (change as needed)
//wire clk_out;

//clk_div_by_n uut (
//    .clk(clk),
//    .n(n),
//    .clk_out(clk_out)
//);

//// Generate 100MHz clock => 10ns period
//always #5 clk = ~clk;

//initial begin
//    $dumpfile("clk_div.vcd");
//    $dumpvars(0, clk_div_by_n_tb);

//    $display("Time\tclk\tclk_out");
//    $monitor("%0t\t%b\t%b", $time, clk, clk_out);

//    #500;  // run for some time
//    $finish;
//end

//endmodule
