`timescale 1ns / 1ps

module register_file#(parameter N=64, parameter W=32, B=$clog2(N))
(
 input clk,
 input wen_i, // write enable signal asserted when a vlue is to be written to a register 
 input [B-1:0] wa_i, // write address to specify which register to write to 
 input [W-1:0] wd_i, // a data value to write to the given register ("write data")
 input [B-1:0] ra0_i, // read addresses i.e. two register numbers to selct which registers to read 
 input [B-1:0] ra1_i, 
 output [W-1:0] rd0_o, // names of two data values read from register ("read data") 
 output [W-1:0] rd1_o
);

   // Register array 
   logic [W-1:0] rd[N-1:0]; 
	
   /* Reads are asynchronous - anytime ra0_i or ra1_i changes, the value
	 * in the newly-specified register(s) should be output on rd0_o or rd1_o
	 * immediately */
   assign rd0_o = rd[ra0_i];
	assign rd1_o = rd[ra1_i]; 

   always_ff @(posedge clk) //enable SystemVerilog to make always_ff work!
     begin
        if (wen_i)
		  begin
		     // Assign wd_i to register number specified in wa_i
			  rd[wa_i] <= wd_i; 
		  end 
     end
	  
endmodule