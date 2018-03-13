module srlN
	#(parameter width =3)
		(input logic [width-1:0] a,
		output logic [width-1:0] y);
		
	assign y = a >> width;
endmodule
