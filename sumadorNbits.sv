module sumadorNbits #(parameter N = 3)
		(input logic [N-1:0] A,
		 input logic [N-1:0] B,
		 input logic Cin,
		 output logic Cout,
		 output logic [N-1:0] Q);
		 
	    logic [N:0] carrys;
		 assign carrys[0] = Cin;
		 genvar i;
		 generate
			
			for(i=0;i<N;i=i+1)begin:sumador_completo
				sumador1bit sumai(A[i],B[i],carrys[i],Q[i],carrys[i+1]);//(.A1bit(A[i]),.B1bit(B[i]),.Q1bit(Q[i]),.Cin1bit(carrys[i]),.Cout1bit(carrys[i+1]));
			end
		endgenerate
		assign Cout = carrys[N];
		 
endmodule 