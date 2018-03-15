module ALU
			#(parameter width = 3)
			 (input logic [width-1:0] a,
			  input logic [width-1:0] b,
			  input logic [2:0] control,
			  input logic carryin,
			  output logic [width-1:0] result,
			  output logic n,
			  output logic z,
			  output logic c,
			  output logic v);
			  
	//logic [width-1:0] z;
	/*
	generate
		if(control == 0) begin
			sumadorNbits 
			#(width) 
			sumaN(a,b,carryin,c,result);
		end
		else if(control == 1) begin
			sllN
			#(width)
			shiftL(a,b,result);
		end
		else if(control == 2) begin
			srlN
			#(width)
			shiftR(a,b,result);
		end
		else if(control == 3) begin
			xorN
			#(width)
			xorgate(a,b,result);
		end
		endgenerate*/
		
	/*
	always_comb
		case(control)
		0: 
				sumadorNbits
				#(width)
				sumaN(a,b,carryin,c,result);
			
				
		1:
				sllN
				#(width)
				shiftL(a,b,result);
		
			
		2:
				srlN
				#(width)
				shiftR(a,b,result);
		
		
		3: 
				xorN
				#(width)
				xorgate(a,b,result);
				
		
		4: 
				orN
				#(width)
				orgate(a,b,result);
		
		5:
				notN
				#(width)
				notgate(a,result);
				
		6: 
				andN
				#(width)
				andgate(a,b,result);
			
		
		7: 
				andN
				#(width)
				andgate(a,b,result);
			
		
		default: 
						andN
						#(width)
						andgate(a,b,result);
						
		endcase*/
		
	logic [width-1:0] d0,d1,d2,d3,d4,d5,d6;
	
	generate
		
		sumadorNbits 
		#(width)
		sumaN(a,b,carryin,c,d0);
		
		sllN
		#(width)
		shiftL(a,b,d1);
		
		srlN
		#(width)
		shiftR(a,b,d2);
		
		xorN
		#(width)
		xorgate(a,b,d3);
		
		orN
		#(width)
		orgate(a,b,d4);
		
		notN
		#(width)
		notgate(a,d5);
		
		andN
		#(width)
		andgate(a,b,d6);
		
		//falta restador
		
	endgenerate

endmodule
