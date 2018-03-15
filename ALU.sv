module ALU
			#(parameter width = 3)
			 (input logic [width-1:0] a,
			  input logic [width-1:0] b,
			  input logic [3:0] control,
			  input logic carryin,
			  output logic [width-1:0] result,
			  output logic n,
			  output logic z,
			  output logic c,
			  output logic v);
	
	generate
	
		sumadorNbits 
		#(width)
		sumaN(a,b,carryin,c,result);
		
		sllN
		#(width)
		shiftL(a,b,result);
		
		srlN
		#(width)
		shiftR(a,b,result);
		
		xorN
		#(width)
		xorgate(a,b,result);
		
		orN
		#(width)
		orgate(a,b,result);
		
		notN
		#(width)
		notgate(a,result);
		
		andN
		#(width)
		andgate(a,b,result);
		
		//falta restador
		
	endgenerate

endmodule
