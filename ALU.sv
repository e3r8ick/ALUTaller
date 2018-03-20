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
			  
	logic [width-1:0] d0,d1,d2,d3,d4,d5,d6, d7;
	logic nr,zs,zr,zshiftr,zshiftl;
		
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
		
		restadorNbits
		#(width)
		restar(a, b, d7);

		MUX
		#(width)
		muxOut(d0, d1, d2, d3, d4, d5, d6, d7, control, result);
		
		assign n = result[width-1];
		
		always @* begin
		if(result==0) begin
			z<=1;
		end
		else begin
			z<=0;
		end
		
		if(((control==7)||(control==0))&&(a[width-1]!=result[width-1])&&(a[width-1]==b[width-1])) begin
			v<=1;
		end
		else begin
			v<=0;
		end
		
		end

endmodule
