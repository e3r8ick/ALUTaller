module notN
	#(parameter width =3)
		(input logic [width-1:0] a,
		 output logic [width-1:0] y);
		
	genvar i;
	logic [width-1:0] x;

	generate
		for(i=1; i<width; i=i+1) begin: forloop
			assign x[i] = a[i] ^ 1;
		end
		
	endgenerate

	assign y = x[width-1];
endmodule
