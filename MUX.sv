module MUX
			#(parameter width = 3)
			 (input logic [width-1:0] d0, d1, d2, d3, d4, d5, d6, d7,
			  input logic [2:0] control,
			  output logic [width-1:0] result);
			  
	assign result = control ? d7 : d0;
	
endmodule
