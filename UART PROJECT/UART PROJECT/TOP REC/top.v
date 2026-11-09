`include"uart_txd_fifo_dut.v"
`include"uart_rec_top.v"
module top (
           
		    input clk,
			input rst_n,
			input [7:0]data_in_top,
			input wr_en_top,
			input rd_en_top,
			input RXD_IN,


			output TXD_OUT,
            output[7:0]data_out_top
			 
           );


		   // instantiation of transmitter FIFO

		   uart_txd_fifo_dut tr1 (
                                   .clk(clk),
								   .rst_n(rst_n),
								   .data_in(data_in_top),
								   .wr_en(wr_en_top),
								   .rd_en(rd_en_top),
								   .tx_dout(TXD_OUT)		                         
								 );

		 // instantiaiton of receiver FIFO

		 uart_rec_top r1 (
                             .clk(clk),
							 .rst_n(rst_n),
							 .wr_en(wr_en_top),
							 .rd_en(rd_en_top),
							 .RXD(RXD_IN),
							 .fifo_out(data_out_top)


		                 );


endmodule
