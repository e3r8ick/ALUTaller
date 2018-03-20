module ALU_TB(); 

	//signals
	logic [3:0] a;
	logic [3:0] b;
	logic [2:0] control;
	logic carryin;
	logic [3:0] result;
	logic n;
	logic z;
	logic c;
	logic v;
			  
	//DUT instance
	ALU DUT(a,b,control,carryin,result,n,z,c,v);
	initial begin
	//test
	for(int i=0;i<8;i++) begin
		control = i;
		
		for(int j=0;j<4;j++) begin
			a = j;
			b = j+7;
			#10;
		end
	end
	end
	
	
//	initial begin
//	//suma; a=1111 ; b=1111 ; result=1110 ; c=1 ; n=1; z=0; v=0
//	a[0]=1;
//	a[1]=1;
//	a[2]=1;
//	a[3]=1;
//	b[0]=1;
//	b[1]=1;
//	b[2]=1;
//	b[3]=1;
//	control[0]=0;
//	control[1]=0;
//	control[2]=0;
//	#25
//	
//	//a=1111 ; b=1111 ; result= ; c=1 ; n=1; z=0; v=0
//	a[0]=1;
//	a[1]=1;
//	a[2]=1;
//	a[3]=1;
//	b[0]=1;
//	b[1]=1;
//	b[2]=1;
//	b[3]=1;
//	control[0]=0;
//	control[1]=0;
//	control[2]=0;
//	#25
//	
	

endmodule
