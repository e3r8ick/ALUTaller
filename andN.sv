module andN
	#(parameter width =3)
		(input logic [width-1:0] a,
		input logic [width-1:0] b,
		output logic [width-1:0] y);
		
	genvar i;
	logic [width-1:0] x;

	generate
		for(i=1; i<width; i=i+1) begin: forloop
			assign x[i] = a[i] & b[i];
		end
		
	endgenerate

	assign y = x[width-1];
endmodule
