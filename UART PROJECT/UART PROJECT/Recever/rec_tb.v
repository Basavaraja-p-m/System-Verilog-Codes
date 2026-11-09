`include"rec.v"
module rec_tb;
       
	        reg clk;
			reg rst;
			reg rx;
			
			wire [7:0]data_out;

			rec r1 (
                      .clk(clk),
					  .rst(rst),
					  .rx(rx),
					  .data_out(data_out)
					);

		//	initial always #5 clk=~clk;
        
		initial begin  // generation of clock 
		    clk=0;

			while(1)
			#5 clk=~clk;
		 end

		 initial begin
		 rst=0;
		 	#5;
		 rst=1;
		 end

		 initial begin
	
		 rx		=	0; 	#10;	// to start
		 rx		=	1;  #10;	// bit_1
		 rx		=	1;	#10;	// bit_2
		 rx		=	1;	#10;	// bit_3
		 rx		=	1;	#10;	// bit_4
		 rx		=	1;	#10;	// bit_5
		 rx		=	1;	#10;	// bit_6
		 rx		=	1;	#10;	// bit_7
		 rx		=	1;	#10;	// bit_8
		 rx		=	0;	#10;	// parity
		 rx		=	1;	#10;	// stop
		
		 end
		 
		 initial #500 $finish;

		 initial $monitor("data_out=[%b]",data_out);



endmodule
